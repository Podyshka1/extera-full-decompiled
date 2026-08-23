package com.android.p003dx.p006io.instructions;

import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class AddressMap {
    private final HashMap<Integer, Integer> map = new HashMap<>();

    public int get(int i) {
        Integer num = this.map.get(Integer.valueOf(i));
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    public void put(int i, int i2) {
        this.map.put(Integer.valueOf(i), Integer.valueOf(i2));
    }
}
