package com.exteragram.messenger.ai.data;

import com.exteragram.messenger.ai.AiConfig;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class Service implements Serializable {
    private String key;
    private String model;
    private String url;

    public Service(String str, String str2, String str3) {
        this.url = str;
        this.model = str2;
        this.key = str3;
    }

    public String getUrl() {
        return this.url;
    }

    public String getModel() {
        return this.model;
    }

    public String getShortModel() {
        String str = this.model.split("/")[r0.length - 1];
        int iIndexOf = str.indexOf(58);
        return iIndexOf != -1 ? str.substring(0, iIndexOf) : str;
    }

    public String getKey() {
        return this.key;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && hashCode() == ((Service) obj).hashCode();
    }

    public int hashCode() {
        return (this.url + this.model + this.key).hashCode();
    }

    public boolean isSelected() {
        return Integer.valueOf(AiConfig.getSelectedService()).equals(Integer.valueOf(hashCode()));
    }
}
