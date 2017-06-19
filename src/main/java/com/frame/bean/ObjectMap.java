package com.frame.bean;

import java.util.HashMap;

@SuppressWarnings("serial")
public class ObjectMap<K, V> extends HashMap<K, V> {
	@SuppressWarnings("unchecked")
	public V put(  K key,   V value) {
		key = (K) key.toString().toLowerCase();
		return super.put(key, value);
	};
	
	@Override
	public V get(Object key) {
		key = key.toString().toLowerCase();
		return super.get(key);
	}
}
