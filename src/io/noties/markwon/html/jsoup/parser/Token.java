package io.noties.markwon.html.jsoup.parser;

import io.noties.markwon.html.jsoup.helper.Normalizer;
import io.noties.markwon.html.jsoup.helper.Validate;
import io.noties.markwon.html.jsoup.nodes.Attributes;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Token {
    public final TokenType type;

    public enum TokenType {
        Doctype,
        StartTag,
        EndTag,
        Comment,
        Character,
        EOF
    }

    public abstract Token reset();

    public Token(TokenType tokenType) {
        this.type = tokenType;
    }

    public static void reset(StringBuilder sb) {
        if (sb != null) {
            sb.delete(0, sb.length());
        }
    }

    public static final class Doctype extends Token {
        boolean forceQuirks;
        final StringBuilder name;
        String pubSysKey;
        final StringBuilder publicIdentifier;
        final StringBuilder systemIdentifier;

        public Doctype() {
            super(TokenType.Doctype);
            this.name = new StringBuilder();
            this.pubSysKey = null;
            this.publicIdentifier = new StringBuilder();
            this.systemIdentifier = new StringBuilder();
            this.forceQuirks = false;
        }

        @Override // io.noties.markwon.html.jsoup.parser.Token
        public Token reset() {
            Token.reset(this.name);
            this.pubSysKey = null;
            Token.reset(this.publicIdentifier);
            Token.reset(this.systemIdentifier);
            this.forceQuirks = false;
            return this;
        }
    }

    public static abstract class Tag extends Token {
        public Attributes attributes;
        private boolean hasEmptyAttributeValue;
        private boolean hasPendingAttributeValue;
        public String normalName;
        private String pendingAttributeName;
        private StringBuilder pendingAttributeValue;
        private String pendingAttributeValueS;
        public boolean selfClosing;
        public String tagName;

        public Tag(TokenType tokenType) {
            super(tokenType);
            this.pendingAttributeValue = new StringBuilder();
            this.hasEmptyAttributeValue = false;
            this.hasPendingAttributeValue = false;
            this.selfClosing = false;
        }

        @Override // io.noties.markwon.html.jsoup.parser.Token
        public Tag reset() {
            this.tagName = null;
            this.normalName = null;
            this.pendingAttributeName = null;
            Token.reset(this.pendingAttributeValue);
            this.pendingAttributeValueS = null;
            this.hasEmptyAttributeValue = false;
            this.hasPendingAttributeValue = false;
            this.selfClosing = false;
            this.attributes = null;
            return this;
        }

        public final void newAttribute() {
            String string;
            if (this.attributes == null) {
                this.attributes = new Attributes();
            }
            String str = this.pendingAttributeName;
            if (str != null) {
                String strTrim = str.trim();
                this.pendingAttributeName = strTrim;
                if (strTrim.length() > 0) {
                    if (this.hasPendingAttributeValue) {
                        string = this.pendingAttributeValue.length() > 0 ? this.pendingAttributeValue.toString() : this.pendingAttributeValueS;
                    } else {
                        string = this.hasEmptyAttributeValue ? _UrlKt.FRAGMENT_ENCODE_SET : null;
                    }
                    this.attributes.put(this.pendingAttributeName, string);
                }
            }
            this.pendingAttributeName = null;
            this.hasEmptyAttributeValue = false;
            this.hasPendingAttributeValue = false;
            Token.reset(this.pendingAttributeValue);
            this.pendingAttributeValueS = null;
        }

        public final void finaliseTag() {
            if (this.pendingAttributeName != null) {
                newAttribute();
            }
        }

        public final String name() {
            String str = this.tagName;
            Validate.isFalse(str == null || str.length() == 0);
            return this.tagName;
        }

        public final Tag name(String str) {
            this.tagName = str;
            this.normalName = Normalizer.lowerCase(str);
            return this;
        }

        public final void appendTagName(String str) {
            String str2 = this.tagName;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.tagName = str;
            this.normalName = Normalizer.lowerCase(str);
        }

        public final void appendTagName(char c2) {
            appendTagName(String.valueOf(c2));
        }

        public final void appendAttributeName(String str) {
            String str2 = this.pendingAttributeName;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.pendingAttributeName = str;
        }

        public final void appendAttributeName(char c2) {
            appendAttributeName(String.valueOf(c2));
        }

        public final void appendAttributeValue(String str) {
            ensureAttributeValue();
            if (this.pendingAttributeValue.length() == 0) {
                this.pendingAttributeValueS = str;
            } else {
                this.pendingAttributeValue.append(str);
            }
        }

        public final void appendAttributeValue(char c2) {
            ensureAttributeValue();
            this.pendingAttributeValue.append(c2);
        }

        public final void appendAttributeValue(int[] iArr) {
            ensureAttributeValue();
            for (int i : iArr) {
                this.pendingAttributeValue.appendCodePoint(i);
            }
        }

        public final void setEmptyAttributeValue() {
            this.hasEmptyAttributeValue = true;
        }

        private void ensureAttributeValue() {
            this.hasPendingAttributeValue = true;
            String str = this.pendingAttributeValueS;
            if (str != null) {
                this.pendingAttributeValue.append(str);
                this.pendingAttributeValueS = null;
            }
        }
    }

    public static final class StartTag extends Tag {
        public StartTag() {
            super(TokenType.StartTag);
            this.attributes = new Attributes();
        }

        @Override // io.noties.markwon.html.jsoup.parser.Token.Tag, io.noties.markwon.html.jsoup.parser.Token
        public Tag reset() {
            super.reset();
            this.attributes = new Attributes();
            return this;
        }

        public String toString() {
            Attributes attributes = this.attributes;
            if (attributes != null && attributes.size() > 0) {
                return "<" + name() + " " + this.attributes.toString() + ">";
            }
            return "<" + name() + ">";
        }
    }

    public static final class EndTag extends Tag {
        public EndTag() {
            super(TokenType.EndTag);
        }

        public String toString() {
            return "</" + name() + ">";
        }
    }

    public static final class Comment extends Token {
        boolean bogus;
        final StringBuilder data;

        @Override // io.noties.markwon.html.jsoup.parser.Token
        public Token reset() {
            Token.reset(this.data);
            this.bogus = false;
            return this;
        }

        public Comment() {
            super(TokenType.Comment);
            this.data = new StringBuilder();
            this.bogus = false;
        }

        public String getData() {
            return this.data.toString();
        }

        public String toString() {
            return "<!--" + getData() + "-->";
        }
    }

    public static class Character extends Token {
        private String data;

        public Character() {
            super(TokenType.Character);
        }

        @Override // io.noties.markwon.html.jsoup.parser.Token
        public Token reset() {
            this.data = null;
            return this;
        }

        public Character data(String str) {
            this.data = str;
            return this;
        }

        public String getData() {
            return this.data;
        }

        public String toString() {
            return getData();
        }
    }

    public static final class CData extends Character {
        public CData(String str) {
            data(str);
        }

        @Override // io.noties.markwon.html.jsoup.parser.Token.Character
        public String toString() {
            return "<![CDATA[" + getData() + "]]>";
        }
    }

    public static final class EOF extends Token {
        @Override // io.noties.markwon.html.jsoup.parser.Token
        public Token reset() {
            return this;
        }

        public EOF() {
            super(TokenType.EOF);
        }
    }
}
