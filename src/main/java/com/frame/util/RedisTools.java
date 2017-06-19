package com.frame.util;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by yibo on 2015/3/27.
 */
public class RedisTools {
    private static JedisPool pool = null;

    private RedisTools() {

    }

    /**
     * 构建redis连接池
     *
     * @return JedisPool
     */
    private static JedisPool getPool() {
        if (pool == null) {
            JedisPoolConfig config = new JedisPoolConfig();
            //控制一个pool可分配多少个jedis实例，通过pool.getResource()来获取；
            //如果赋值为-1，则表示不限制；如果pool已经分配了maxActive个jedis实例，则此时pool的状态为exhausted(耗尽)。
            //config.setMaxActive(500);
            //控制一个pool最多有多少个状态为idle(空闲的)的jedis实例。
            config.setMaxIdle(50);

            config.setMaxWaitMillis(1000 * 100);

            //表示当borrow(引入)一个jedis实例时，最大的等待时间，如果超过等待时间，则直接抛出JedisConnectionException；
            //config.setMaxWait(1000 * 100);
            //在borrow一个jedis实例时，是否提前进行validate操作；如果为true，则得到的jedis实例均是可用的；
            config.setTestOnBorrow(true);
            pool = new JedisPool(config, PropertiesTools.JEDIS_IP, 6379, 10 * 1000);
        }
        return pool;
    }

    private static JedisPool getRPool() {
        JedisPoolConfig config = new JedisPoolConfig();
        //控制一个pool可分配多少个jedis实例，通过pool.getResource()来获取；
        //如果赋值为-1，则表示不限制；如果pool已经分配了maxActive个jedis实例，则此时pool的状态为exhausted(耗尽)。
        //config.setMaxActive(500);
        //控制一个pool最多有多少个状态为idle(空闲的)的jedis实例。
        config.setMaxIdle(50);
        //表示当borrow(引入)一个jedis实例时，最大的等待时间，如果超过等待时间，则直接抛出JedisConnectionException；
        //config.setMaxWait(1000 * 100);
        //在borrow一个jedis实例时，是否提前进行validate操作；如果为true，则得到的jedis实例均是可用的；
        config.setTestOnBorrow(true);
        pool = new JedisPool(config, PropertiesTools.JEDIS_IP);
        return pool;
    }

    /**
     * @return
     */
    public static synchronized Jedis getJedis() {
        try {
            return RedisTools.getPool().getResource();
        } catch (Exception e) {
            System.err.println("Jedis 错误");
            return RedisTools.getRPool().getResource();
        }
    }

    /**
     * 返还到连接池
     *
     * @param redis
     */
    public static void returnResource(Jedis redis) {
        if (redis != null) {
            pool.returnResource(redis);
        }
    }

    /**
     * 获取数据
     *
     * @param key
     * @return
     */
    public static String get(String key) {
        String value = null;

        JedisPool pool = null;
        Jedis jedis = null;
        try {
            jedis = pool.getResource();
            value = jedis.get(key);
        } catch (Exception e) {
            //释放redis对象
            pool.returnBrokenResource(jedis);
            e.printStackTrace();
        } finally {
            //返还到连接池
            returnResource(jedis);
        }

        return value;
    }

    public static void main(String[] args) {
        Jedis j = RedisTools.getJedis();

        Map map = new HashMap<>();
        j.sadd("category", "");
        j.sadd("category", "222");
        j.sadd("category", "333");

        System.out.println("###"+j.get("category") == null);


        j.expire("category", 3);
        System.out.println(j.exists("category"));
        System.out.println(j.scard("category"));
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println(j.exists("category"));

        //j.set("key", "hello");
        System.out.println(j.get("key"));
        RedisTools.returnResource(j);
    }
}
