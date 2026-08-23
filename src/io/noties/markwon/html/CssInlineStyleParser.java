package io.noties.markwon.html;

import android.text.TextUtils;
import java.util.Iterator;
import okhttp3.internal.url._UrlKt;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CssInlineStyleParser {
    public abstract Iterable<CssProperty> parse(String str);

    public static CssInlineStyleParser create() {
        return new Impl();
    }

    public static class Impl extends CssInlineStyleParser {
        @Override // io.noties.markwon.html.CssInlineStyleParser
        public Iterable<CssProperty> parse(String str) {
            return new CssIterable(str);
        }

        public static class CssIterable implements Iterable<CssProperty> {
            private final String input;

            public CssIterable(String str) {
                this.input = str;
            }

            @Override // java.lang.Iterable
            public Iterator<CssProperty> iterator() {
                return new CssIterator();
            }

            public class CssIterator implements Iterator<CssProperty> {
                private final StringBuilder builder;
                private final CssProperty cssProperty;
                private int index;
                private final int length;

                private CssIterator() {
                    this.cssProperty = new CssProperty();
                    this.builder = new StringBuilder();
                    this.length = CssIterable.this.input.length();
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    prepareNext();
                    return hasNextPrepared();
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.Iterator
                public CssProperty next() {
                    if (!hasNextPrepared()) {
                        Utils$$ExternalSyntheticBUOutline0.m978m();
                        return null;
                    }
                    return this.cssProperty;
                }

                private void prepareNext() {
                    this.cssProperty.set(_UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET);
                    this.builder.setLength(0);
                    String strTrim = null;
                    boolean z = false;
                    String strTrim2 = null;
                    for (int i = this.index; i < this.length; i++) {
                        char cCharAt = CssIterable.this.input.charAt(i);
                        if (strTrim == null) {
                            if (':' == cCharAt) {
                                if (this.builder.length() > 0) {
                                    strTrim = this.builder.toString().trim();
                                }
                                this.builder.setLength(0);
                            } else if (';' == cCharAt) {
                                this.builder.setLength(0);
                            } else if (Character.isWhitespace(cCharAt)) {
                                if (this.builder.length() > 0) {
                                    z = true;
                                }
                            } else {
                                StringBuilder sb = this.builder;
                                if (z) {
                                    sb.setLength(0);
                                    this.builder.append(cCharAt);
                                    z = false;
                                } else {
                                    sb.append(cCharAt);
                                }
                            }
                        } else if (strTrim2 != null) {
                            continue;
                        } else if (Character.isWhitespace(cCharAt)) {
                            if (this.builder.length() > 0) {
                                this.builder.append(cCharAt);
                            }
                        } else {
                            StringBuilder sb2 = this.builder;
                            if (';' == cCharAt) {
                                strTrim2 = sb2.toString().trim();
                                this.builder.setLength(0);
                                if (hasValues(strTrim, strTrim2)) {
                                    this.index = i + 1;
                                    this.cssProperty.set(strTrim, strTrim2);
                                    return;
                                }
                            } else {
                                sb2.append(cCharAt);
                            }
                        }
                    }
                    if (strTrim == null || this.builder.length() <= 0) {
                        return;
                    }
                    this.cssProperty.set(strTrim, this.builder.toString().trim());
                    this.index = this.length;
                }

                private boolean hasNextPrepared() {
                    return hasValues(this.cssProperty.key(), this.cssProperty.value());
                }

                private boolean hasValues(String str, String str2) {
                    return (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) ? false : true;
                }
            }
        }
    }
}
