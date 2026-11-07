package kotlin.collections.builders;

import com.exteragram.messenger.plugins.PluginsConstants;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0000\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u001d\bF\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007B\t\bV¢\u0006\u0004\b\u0006\u0010\bJ\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\n\u0010\u0010\u001a\u00020\u0011H\u0082\u0080\u0004R\u0013\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003X\u0082\u008e\b¢\u0006\u0002\n\u0000R\u000f\u0010\u0004\u001a\u00020\u0005X\u0082\u0084\b¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lkotlin/collections/builders/SerializedCollection;", "Ljava/io/Externalizable;", "collection", _UrlKt.FRAGMENT_ENCODE_SET, "tag", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/util/Collection;I)V", "()V", "writeExternal", _UrlKt.FRAGMENT_ENCODE_SET, "output", "Ljava/io/ObjectOutput;", "readExternal", PluginsConstants.Settings.TYPE_INPUT, "Ljava/io/ObjectInput;", "readResolve", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/SerializedCollection\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,724:1\n1#2:725\n*E\n"})
public final class SerializedCollection implements Externalizable {
    private static final long serialVersionUID = 0;
    public static final int tagList = 0;
    public static final int tagSet = 1;
    private Collection<?> collection;
    private final int tag;

    public SerializedCollection(Collection<?> collection, int i) {
        this.collection = collection;
        this.tag = i;
    }

    public SerializedCollection() {
        this(CollectionsKt.emptyList(), 0);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput output) throws IOException {
        output.writeByte(this.tag);
        output.writeInt(this.collection.size());
        Iterator<?> it = this.collection.iterator();
        while (it.hasNext()) {
            output.writeObject(it.next());
        }
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput input) throws IOException {
        List listBuild;
        byte b2 = input.readByte();
        int i = b2 & 1;
        if ((b2 & (-2)) != 0) {
            SerializedMap$$ExternalSyntheticBUOutline0.m870m("Unsupported flags value: ", b2);
            return;
        }
        int i2 = input.readInt();
        if (i2 < 0) {
            SerializedMap$$ExternalSyntheticBUOutline0.m870m("Illegal size value: ", i2);
            return;
        }
        int i3 = 0;
        if (i == 0) {
            List listCreateListBuilder = CollectionsKt.createListBuilder(i2);
            while (i3 < i2) {
                listCreateListBuilder.add(input.readObject());
                i3++;
            }
            listBuild = CollectionsKt.build(listCreateListBuilder);
        } else if (i == 1) {
            Set setCreateSetBuilder = SetsKt.createSetBuilder(i2);
            while (i3 < i2) {
                setCreateSetBuilder.add(input.readObject());
                i3++;
            }
            listBuild = SetsKt.build(setCreateSetBuilder);
        } else {
            SerializedMap$$ExternalSyntheticBUOutline0.m870m("Unsupported collection type tag: ", i);
            return;
        }
        this.collection = listBuild;
    }

    private final Object readResolve() {
        return this.collection;
    }
}
