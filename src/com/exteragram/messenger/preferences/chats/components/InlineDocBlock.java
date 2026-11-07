package com.exteragram.messenger.preferences.chats.components;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/exteragram/messenger/preferences/chats/components/InlineDocBlock;", _UrlKt.FRAGMENT_ENCODE_SET, "Text", "Codes", "Examples", "Lcom/exteragram/messenger/preferences/chats/components/InlineDocBlock$Codes;", "Lcom/exteragram/messenger/preferences/chats/components/InlineDocBlock$Examples;", "Lcom/exteragram/messenger/preferences/chats/components/InlineDocBlock$Text;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public interface InlineDocBlock {

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/exteragram/messenger/preferences/chats/components/InlineDocBlock$Text;", "Lcom/exteragram/messenger/preferences/chats/components/InlineDocBlock;", _UrlKt.FRAGMENT_ENCODE_SET, "text", "<init>", "(Ljava/lang/CharSequence;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/CharSequence;", "getText", "()Ljava/lang/CharSequence;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Text implements InlineDocBlock {
        private final CharSequence text;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Text) && Intrinsics.areEqual(this.text, ((Text) other).text);
        }

        public int hashCode() {
            return this.text.hashCode();
        }

        public String toString() {
            return "Text(text=" + ((Object) this.text) + ")";
        }

        public Text(CharSequence charSequence) {
            this.text = charSequence;
        }

        public final CharSequence getText() {
            return this.text;
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/exteragram/messenger/preferences/chats/components/InlineDocBlock$Codes;", "Lcom/exteragram/messenger/preferences/chats/components/InlineDocBlock;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "codes", "<init>", "(Ljava/util/List;)V", "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getCodes", "()Ljava/util/List;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Codes implements InlineDocBlock {
        private final List<String> codes;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Codes) && Intrinsics.areEqual(this.codes, ((Codes) other).codes);
        }

        public int hashCode() {
            return this.codes.hashCode();
        }

        public String toString() {
            return "Codes(codes=" + this.codes + ")";
        }

        public Codes(List<String> list) {
            this.codes = list;
        }

        public final List<String> getCodes() {
            return this.codes;
        }
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rHÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/exteragram/messenger/preferences/chats/components/InlineDocBlock$Examples;", "Lcom/exteragram/messenger/preferences/chats/components/InlineDocBlock;", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/preferences/chats/components/InlineDocExample;", "examples", "<init>", "(Ljava/util/List;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", _UrlKt.FRAGMENT_ENCODE_SET, "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Ljava/util/List;", "getExamples", "()Ljava/util/List;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Examples implements InlineDocBlock {
        private final List<InlineDocExample> examples;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Examples) && Intrinsics.areEqual(this.examples, ((Examples) other).examples);
        }

        public int hashCode() {
            return this.examples.hashCode();
        }

        public String toString() {
            return "Examples(examples=" + this.examples + ")";
        }

        public Examples(List<InlineDocExample> list) {
            this.examples = list;
        }

        public final List<InlineDocExample> getExamples() {
            return this.examples;
        }
    }
}
