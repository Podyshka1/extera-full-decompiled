package com.yandex.mapkit.images;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ImageDataDescriptor implements Serializable {
    private String imageId;
    private Integer primaryColor;
    private Integer secondaryColor;
    private Integer tertiaryColor;

    public ImageDataDescriptor(String str, Integer num, Integer num2, Integer num3) {
        if (str == null) {
            throw new IllegalArgumentException("Required field \"imageId\" cannot be null");
        }
        this.imageId = str;
        this.primaryColor = num;
        this.secondaryColor = num2;
        this.tertiaryColor = num3;
    }

    public ImageDataDescriptor() {
    }

    public String getImageId() {
        return this.imageId;
    }

    public Integer getPrimaryColor() {
        return this.primaryColor;
    }

    public Integer getSecondaryColor() {
        return this.secondaryColor;
    }

    public Integer getTertiaryColor() {
        return this.tertiaryColor;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.imageId = archive.add(this.imageId, false);
        this.primaryColor = archive.add(this.primaryColor, true);
        this.secondaryColor = archive.add(this.secondaryColor, true);
        this.tertiaryColor = archive.add(this.tertiaryColor, true);
    }
}
