package com.yandex.mapkit.search;

import com.yandex.mapkit.BaseMetadata;
import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class CurrencyExchangeMetadata implements BaseMetadata, Serializable {
    private List<CurrencyExchangeType> currencies;
    private boolean currencies__is_initialized;
    private NativeObject nativeObject;

    private native List<CurrencyExchangeType> getCurrencies__Native();

    private native NativeObject init(List<CurrencyExchangeType> list);

    public CurrencyExchangeMetadata() {
        this.currencies__is_initialized = false;
    }

    public CurrencyExchangeMetadata(List<CurrencyExchangeType> list) {
        this.currencies__is_initialized = false;
        if (list == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"currencies\" cannot be null");
            throw null;
        }
        this.nativeObject = init(list);
        this.currencies = list;
        this.currencies__is_initialized = true;
    }

    private CurrencyExchangeMetadata(NativeObject nativeObject) {
        this.currencies__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized List<CurrencyExchangeType> getCurrencies() {
        try {
            if (!this.currencies__is_initialized) {
                this.currencies = getCurrencies__Native();
                this.currencies__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.currencies;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            List<CurrencyExchangeType> listAdd = archive.add((List) this.currencies, false, (ArchivingHandler) new ClassHandler(CurrencyExchangeType.class));
            this.currencies = listAdd;
            this.currencies__is_initialized = true;
            this.nativeObject = init(listAdd);
            return;
        }
        archive.add((List) getCurrencies(), false, (ArchivingHandler) new ClassHandler(CurrencyExchangeType.class));
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::search::CurrencyExchangeMetadata";
    }
}
