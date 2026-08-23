package io.noties.markwon.html;

/* JADX INFO: loaded from: classes5.dex */
abstract class TrimmingAppender {
    public abstract <T extends Appendable & CharSequence> void append(T t, String str);

    public static TrimmingAppender create() {
        return new Impl();
    }

    public static class Impl extends TrimmingAppender {
        @Override // io.noties.markwon.html.TrimmingAppender
        public <T extends Appendable & CharSequence> void append(T t, String str) {
            int length;
            T t2 = t;
            int length2 = t2.length();
            int length3 = str.length();
            boolean z = false;
            for (int i = 0; i < length3; i++) {
                char cCharAt = str.charAt(i);
                if (Character.isWhitespace(cCharAt)) {
                    z = true;
                } else {
                    if (z && (length = t2.length()) > 0 && !Character.isWhitespace(t2.charAt(length - 1))) {
                        AppendableUtils.appendQuietly((Appendable) t, ' ');
                    }
                    AppendableUtils.appendQuietly(t, cCharAt);
                    z = false;
                }
            }
            if (!z || length2 >= t2.length()) {
                return;
            }
            AppendableUtils.appendQuietly((Appendable) t, ' ');
        }
    }
}
