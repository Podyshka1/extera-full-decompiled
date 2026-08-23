package com.yandex.mapkit.search;

import com.yandex.mapkit.Money;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class CurrencyExchangeType implements Serializable {
    private Money buy;
    private boolean buy__is_initialized;
    private String name;
    private boolean name__is_initialized;
    private NativeObject nativeObject;
    private Money sell;
    private boolean sell__is_initialized;

    private native Money getBuy__Native();

    private native String getName__Native();

    private native Money getSell__Native();

    private native NativeObject init(String str, Money money, Money money2);

    public CurrencyExchangeType() {
        this.name__is_initialized = false;
        this.buy__is_initialized = false;
        this.sell__is_initialized = false;
    }

    public CurrencyExchangeType(String str, Money money, Money money2) {
        this.name__is_initialized = false;
        this.buy__is_initialized = false;
        this.sell__is_initialized = false;
        this.nativeObject = init(str, money, money2);
        this.name = str;
        this.name__is_initialized = true;
        this.buy = money;
        this.buy__is_initialized = true;
        this.sell = money2;
        this.sell__is_initialized = true;
    }

    private CurrencyExchangeType(NativeObject nativeObject) {
        this.name__is_initialized = false;
        this.buy__is_initialized = false;
        this.sell__is_initialized = false;
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

    public synchronized Money getBuy() {
        try {
            if (!this.buy__is_initialized) {
                this.buy = getBuy__Native();
                this.buy__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.buy;
    }

    public synchronized Money getSell() {
        try {
            if (!this.sell__is_initialized) {
                this.sell = getSell__Native();
                this.sell__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.sell;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.name = archive.add(this.name, true);
            this.name__is_initialized = true;
            this.buy = (Money) archive.add(this.buy, true, (Class<Money>) Money.class);
            this.buy__is_initialized = true;
            Money money = (Money) archive.add(this.sell, true, (Class<Money>) Money.class);
            this.sell = money;
            this.sell__is_initialized = true;
            this.nativeObject = init(this.name, this.buy, money);
            return;
        }
        archive.add(getName(), true);
        archive.add(getBuy(), true, (Class<Money>) Money.class);
        archive.add(getSell(), true, (Class<Money>) Money.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::CurrencyExchangeType";
    }
}
