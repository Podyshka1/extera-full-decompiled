package org.mvel2.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes5.dex */
public class Make {

    public static class Map<K, V> {
        private java.util.Map<K, V> mapInstance;

        public static <K, V> Map<K, V> start() {
            return new Map<>(new HashMap());
        }

        public static <K, V> Map<K, V> start(Class<? extends java.util.Map> cls) {
            try {
                return new Map<>(cls.newInstance());
            } catch (Throwable th) {
                throw new RuntimeException("error creating instance", th);
            }
        }

        private Map(java.util.Map<K, V> map) {
            this.mapInstance = map;
        }

        public Map<K, V> _put(K k, V v) {
            this.mapInstance.put(k, v);
            return this;
        }

        public java.util.Map<K, V> _finish() {
            return finish();
        }

        public java.util.Map<K, V> finish() {
            return this.mapInstance;
        }
    }

    public static class String {
        private StringBuilder stringAppender;

        public static String start() {
            return new String(new StringBuilder());
        }

        public java.lang.String _finish() {
            return finish();
        }

        public java.lang.String finish() {
            return this.stringAppender.toString();
        }

        String(StringBuilder sb) {
            this.stringAppender = sb;
        }

        public String _append(char c) {
            this.stringAppender.append(c);
            return this;
        }

        public String _append(CharSequence charSequence) {
            this.stringAppender.append(charSequence);
            return this;
        }

        public String _append(String string) {
            this.stringAppender.append(string);
            return this;
        }
    }

    public static class List<V> {
        private java.util.List<V> listInstance;

        public static <V> List<V> start() {
            return new List<>(new ArrayList());
        }

        public static <V> List<V> start(Class<? extends java.util.List> cls) {
            try {
                return new List<>(cls.newInstance());
            } catch (Throwable th) {
                throw new RuntimeException("error creating instance", th);
            }
        }

        List(java.util.List<V> list) {
            this.listInstance = list;
        }

        public List<V> _add(V v) {
            this.listInstance.add(v);
            return this;
        }

        public java.util.List<V> _finish() {
            return finish();
        }

        public java.util.List<V> finish() {
            return this.listInstance;
        }
    }

    public static class Set<V> {
        private java.util.Set<V> listInstance;

        public static <V> Set<V> start() {
            return new Set<>(new HashSet());
        }

        public static <V> Set<V> start(Class<? extends java.util.Set> cls) {
            try {
                return new Set<>(cls.newInstance());
            } catch (Throwable th) {
                throw new RuntimeException("error creating instance", th);
            }
        }

        Set(java.util.Set<V> set) {
            this.listInstance = set;
        }

        /* JADX INFO: renamed from: _ */
        public Set<V> m1122_(V v) {
            this.listInstance.add(v);
            return this;
        }

        public java.util.Set<V> _finish() {
            return finish();
        }

        public java.util.Set<V> finish() {
            return this.listInstance;
        }
    }
}
