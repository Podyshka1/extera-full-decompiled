package com.yandex.mapkit.search;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Phone implements Serializable {
    private String country;
    private String ext;
    private String formattedNumber;
    private String info;
    private String number;
    private String prefix;
    private PhoneType type;

    public Phone(PhoneType phoneType, String str, String str2, String str3, String str4, String str5, String str6) {
        if (phoneType == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"type\" cannot be null");
            throw null;
        }
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"formattedNumber\" cannot be null");
            throw null;
        }
        this.type = phoneType;
        this.formattedNumber = str;
        this.info = str2;
        this.country = str3;
        this.prefix = str4;
        this.ext = str5;
        this.number = str6;
    }

    public Phone() {
    }

    public PhoneType getType() {
        return this.type;
    }

    public String getFormattedNumber() {
        return this.formattedNumber;
    }

    public String getInfo() {
        return this.info;
    }

    public String getCountry() {
        return this.country;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public String getExt() {
        return this.ext;
    }

    public String getNumber() {
        return this.number;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.type = (PhoneType) archive.add(this.type, false, (Class<PhoneType>) PhoneType.class);
        this.formattedNumber = archive.add(this.formattedNumber, false);
        this.info = archive.add(this.info, true);
        this.country = archive.add(this.country, true);
        this.prefix = archive.add(this.prefix, true);
        this.ext = archive.add(this.ext, true);
        this.number = archive.add(this.number, true);
    }
}
