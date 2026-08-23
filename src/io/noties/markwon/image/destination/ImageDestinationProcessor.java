package io.noties.markwon.image.destination;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ImageDestinationProcessor {
    public abstract String process(String str);

    public static ImageDestinationProcessor noOp() {
        return new NoOp();
    }

    public static class NoOp extends ImageDestinationProcessor {
        @Override // io.noties.markwon.image.destination.ImageDestinationProcessor
        public String process(String str) {
            return str;
        }

        private NoOp() {
        }
    }
}
