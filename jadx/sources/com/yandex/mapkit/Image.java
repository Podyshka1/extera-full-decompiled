package com.yandex.mapkit;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.ArchivingHandler;
import com.yandex.runtime.bindings.ClassHandler;
import com.yandex.runtime.bindings.Serializable;
import com.yandex.runtime.bindings.StringHandler;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class Image implements Serializable {
    private NativeObject nativeObject;
    private List<ImageSize> sizes;
    private boolean sizes__is_initialized;
    private List<String> tags;
    private boolean tags__is_initialized;
    private String urlTemplate;
    private boolean urlTemplate__is_initialized;

    private native List<ImageSize> getSizes__Native();

    private native List<String> getTags__Native();

    private native String getUrlTemplate__Native();

    private native NativeObject init(String str, List<ImageSize> list, List<String> list2);

    public static class ImageSize implements Serializable {
        private Integer height;
        private String size;
        private Integer width;

        public ImageSize(String str, Integer num, Integer num2) {
            if (str == null) {
                throw new IllegalArgumentException("Required field \"size\" cannot be null");
            }
            this.size = str;
            this.width = num;
            this.height = num2;
        }

        public ImageSize() {
        }

        public String getSize() {
            return this.size;
        }

        public Integer getWidth() {
            return this.width;
        }

        public Integer getHeight() {
            return this.height;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            this.size = archive.add(this.size, false);
            this.width = archive.add(this.width, true);
            this.height = archive.add(this.height, true);
        }
    }

    public Image() {
        this.urlTemplate__is_initialized = false;
        this.sizes__is_initialized = false;
        this.tags__is_initialized = false;
    }

    public Image(String str, List<ImageSize> list, List<String> list2) {
        this.urlTemplate__is_initialized = false;
        this.sizes__is_initialized = false;
        this.tags__is_initialized = false;
        if (str == null) {
            throw new IllegalArgumentException("Required field \"urlTemplate\" cannot be null");
        }
        if (list == null) {
            throw new IllegalArgumentException("Required field \"sizes\" cannot be null");
        }
        if (list2 == null) {
            throw new IllegalArgumentException("Required field \"tags\" cannot be null");
        }
        this.nativeObject = init(str, list, list2);
        this.urlTemplate = str;
        this.urlTemplate__is_initialized = true;
        this.sizes = list;
        this.sizes__is_initialized = true;
        this.tags = list2;
        this.tags__is_initialized = true;
    }

    private Image(NativeObject nativeObject) {
        this.urlTemplate__is_initialized = false;
        this.sizes__is_initialized = false;
        this.tags__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized String getUrlTemplate() {
        try {
            if (!this.urlTemplate__is_initialized) {
                this.urlTemplate = getUrlTemplate__Native();
                this.urlTemplate__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.urlTemplate;
    }

    public synchronized List<ImageSize> getSizes() {
        try {
            if (!this.sizes__is_initialized) {
                this.sizes = getSizes__Native();
                this.sizes__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.sizes;
    }

    public synchronized List<String> getTags() {
        try {
            if (!this.tags__is_initialized) {
                this.tags = getTags__Native();
                this.tags__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.tags;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.urlTemplate = archive.add(this.urlTemplate, false);
            this.urlTemplate__is_initialized = true;
            this.sizes = archive.add((List) this.sizes, false, (ArchivingHandler) new ClassHandler(ImageSize.class));
            this.sizes__is_initialized = true;
            List<String> listAdd = archive.add((List) this.tags, false, (ArchivingHandler) new StringHandler());
            this.tags = listAdd;
            this.tags__is_initialized = true;
            this.nativeObject = init(this.urlTemplate, this.sizes, listAdd);
            return;
        }
        archive.add(getUrlTemplate(), false);
        archive.add((List) getSizes(), false, (ArchivingHandler) new ClassHandler(ImageSize.class));
        archive.add((List) getTags(), false, (ArchivingHandler) new StringHandler());
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::Image";
    }
}
