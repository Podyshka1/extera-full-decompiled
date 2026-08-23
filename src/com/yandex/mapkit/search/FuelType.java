package com.yandex.mapkit.search;

import com.yandex.mapkit.Money;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class FuelType implements Serializable {
    private String name;
    private boolean name__is_initialized;
    private NativeObject nativeObject;
    private Money price;
    private boolean price__is_initialized;

    private native String getName__Native();

    private native Money getPrice__Native();

    private native NativeObject init(String str, Money money);

    public FuelType() {
        this.name__is_initialized = false;
        this.price__is_initialized = false;
    }

    public FuelType(String str, Money money) {
        this.name__is_initialized = false;
        this.price__is_initialized = false;
        this.nativeObject = init(str, money);
        this.name = str;
        this.name__is_initialized = true;
        this.price = money;
        this.price__is_initialized = true;
    }

    private FuelType(NativeObject nativeObject) {
        this.name__is_initialized = false;
        this.price__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized String getName() {
        try {
            if (!this.name__is_initialized) {
                this.name = getName__Native();
                this.name__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.name;
    }

    public synchronized Money getPrice() {
        try {
            if (!this.price__is_initialized) {
                this.price = getPrice__Native();
                this.price__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.price;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.name = archive.add(this.name, true);
            this.name__is_initialized = true;
            Money money = (Money) archive.add(this.price, true, (Class<Money>) Money.class);
            this.price = money;
            this.price__is_initialized = true;
            this.nativeObject = init(this.name, money);
            return;
        }
        archive.add(getName(), true);
        archive.add(getPrice(), true, (Class<Money>) Money.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::FuelType";
    }
}
