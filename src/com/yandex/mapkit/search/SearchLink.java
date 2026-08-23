package com.yandex.mapkit.search;

import com.yandex.mapkit.Attribution;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class SearchLink implements Serializable {
    private String aref;
    private Attribution.Link link;
    private String tag;

    public SearchLink(String str, Attribution.Link link, String str2) {
        if (link == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"link\" cannot be null");
            throw null;
        }
        this.aref = str;
        this.link = link;
        this.tag = str2;
    }

    public SearchLink() {
    }

    public String getAref() {
        return this.aref;
    }

    public Attribution.Link getLink() {
        return this.link;
    }

    public String getTag() {
        return this.tag;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.aref = archive.add(this.aref, true);
        this.link = (Attribution.Link) archive.add(this.link, false, (Class<Attribution.Link>) Attribution.Link.class);
        this.tag = archive.add(this.tag, true);
    }
}
