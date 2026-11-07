package androidx.media3.container;

import androidx.media3.common.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Mp4Box {
    public final int type;

    private Mp4Box(int i) {
        this.type = i;
    }

    public String toString() {
        return getBoxTypeString(this.type);
    }

    public static final class LeafBox extends Mp4Box {
        public final ParsableByteArray data;

        public LeafBox(int i, ParsableByteArray parsableByteArray) {
            super(i);
            this.data = parsableByteArray;
        }
    }

    public static final class ContainerBox extends Mp4Box {
        public final List<ContainerBox> containerChildren;
        public final long endPosition;
        public final List<LeafBox> leafChildren;

        public ContainerBox(int i, long j) {
            super(i);
            this.endPosition = j;
            this.leafChildren = new ArrayList();
            this.containerChildren = new ArrayList();
        }

        public void add(LeafBox leafBox) {
            this.leafChildren.add(leafBox);
        }

        public void add(ContainerBox containerBox) {
            this.containerChildren.add(containerBox);
        }

        public LeafBox getLeafBoxOfType(int i) {
            int size = this.leafChildren.size();
            for (int i2 = 0; i2 < size; i2++) {
                LeafBox leafBox = this.leafChildren.get(i2);
                if (leafBox.type == i) {
                    return leafBox;
                }
            }
            return null;
        }

        public ContainerBox getContainerBoxOfType(int i) {
            int size = this.containerChildren.size();
            for (int i2 = 0; i2 < size; i2++) {
                ContainerBox containerBox = this.containerChildren.get(i2);
                if (containerBox.type == i) {
                    return containerBox;
                }
            }
            return null;
        }

        @Override // androidx.media3.container.Mp4Box
        public String toString() {
            return Mp4Box.getBoxTypeString(this.type) + " leaves: " + Arrays.toString(this.leafChildren.toArray()) + " containers: " + Arrays.toString(this.containerChildren.toArray());
        }
    }

    public static String getBoxTypeString(int i) {
        return _UrlKt.FRAGMENT_ENCODE_SET + ((char) ((i >> 24) & 255)) + ((char) ((i >> 16) & 255)) + ((char) ((i >> 8) & 255)) + ((char) (i & 255));
    }
}
