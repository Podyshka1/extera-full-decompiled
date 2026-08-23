package com.yandex.mapkit;

import com.yandex.runtime.NativeObject;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class Attribution implements Serializable {
    private Author author;
    private boolean author__is_initialized;
    private Image avatarImage;
    private boolean avatarImage__is_initialized;
    private Link link;
    private boolean link__is_initialized;
    private NativeObject nativeObject;

    private native Author getAuthor__Native();

    private native Image getAvatarImage__Native();

    private native Link getLink__Native();

    private native NativeObject init(Author author, Link link, Image image);

    public static class Author implements Serializable {
        private String email;
        private String name;
        private String uri;

        public Author(String str, String str2, String str3) {
            if (str == null) {
                throw new IllegalArgumentException("Required field \"name\" cannot be null");
            }
            this.name = str;
            this.uri = str2;
            this.email = str3;
        }

        public Author() {
        }

        public String getName() {
            return this.name;
        }

        public String getUri() {
            return this.uri;
        }

        public String getEmail() {
            return this.email;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            this.name = archive.add(this.name, false);
            this.uri = archive.add(this.uri, true);
            this.email = archive.add(this.email, true);
        }
    }

    public static class Link implements Serializable {
        private String href;

        public Link(String str) {
            if (str == null) {
                throw new IllegalArgumentException("Required field \"href\" cannot be null");
            }
            this.href = str;
        }

        public Link() {
        }

        public String getHref() {
            return this.href;
        }

        @Override // com.yandex.runtime.bindings.Serializable
        public void serialize(Archive archive) {
            this.href = archive.add(this.href, false);
        }
    }

    public Attribution() {
        this.author__is_initialized = false;
        this.link__is_initialized = false;
        this.avatarImage__is_initialized = false;
    }

    public Attribution(Author author, Link link, Image image) {
        this.author__is_initialized = false;
        this.link__is_initialized = false;
        this.avatarImage__is_initialized = false;
        this.nativeObject = init(author, link, image);
        this.author = author;
        this.author__is_initialized = true;
        this.link = link;
        this.link__is_initialized = true;
        this.avatarImage = image;
        this.avatarImage__is_initialized = true;
    }

    private Attribution(NativeObject nativeObject) {
        this.author__is_initialized = false;
        this.link__is_initialized = false;
        this.avatarImage__is_initialized = false;
        this.nativeObject = nativeObject;
    }

    public synchronized Author getAuthor() {
        try {
            if (!this.author__is_initialized) {
                this.author = getAuthor__Native();
                this.author__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.author;
    }

    public synchronized Link getLink() {
        try {
            if (!this.link__is_initialized) {
                this.link = getLink__Native();
                this.link__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.link;
    }

    public synchronized Image getAvatarImage() {
        try {
            if (!this.avatarImage__is_initialized) {
                this.avatarImage = getAvatarImage__Native();
                this.avatarImage__is_initialized = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.avatarImage;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        if (archive.isReader()) {
            this.author = (Author) archive.add(this.author, true, (Class<Author>) Author.class);
            this.author__is_initialized = true;
            this.link = (Link) archive.add(this.link, true, (Class<Link>) Link.class);
            this.link__is_initialized = true;
            Image image = (Image) archive.add(this.avatarImage, true, (Class<Image>) Image.class);
            this.avatarImage = image;
            this.avatarImage__is_initialized = true;
            this.nativeObject = init(this.author, this.link, image);
            return;
        }
        archive.add(getAuthor(), true, (Class<Author>) Author.class);
        archive.add(getLink(), true, (Class<Link>) Link.class);
        archive.add(getAvatarImage(), true, (Class<Image>) Image.class);
    }

    public static String getNativeName() {
        return "yandex::maps::mapkit::Attribution";
    }
}
