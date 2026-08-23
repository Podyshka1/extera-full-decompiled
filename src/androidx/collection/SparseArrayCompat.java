package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001a\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0013\b\u0007\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\n\u001a\u0004\u0018\u00018\u00002\u0006\u0010\t\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0015\u0010\u000bJ\u0017\u0010\u0016\u001a\u00020\u00032\u0006\u0010\f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001a\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\f\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001a\u0010\u000fJ\u000f\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u001e8\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010\"\u001a\u00020!8\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u001e\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010%0$8\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010\u0010\u001a\u00020\u00038\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010(¨\u0006)"}, d2 = {"Landroidx/collection/SparseArrayCompat;", "E", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "initialCapacity", "<init>", "(I)V", "clone", "()Landroidx/collection/SparseArrayCompat;", "key", "get", "(I)Ljava/lang/Object;", "value", _UrlKt.FRAGMENT_ENCODE_SET, "put", "(ILjava/lang/Object;)V", "size", "()I", "index", "keyAt", "(I)I", "valueAt", "indexOfValue", "(Ljava/lang/Object;)I", "clear", "()V", "append", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "garbage", "Z", _UrlKt.FRAGMENT_ENCODE_SET, "keys", "[I", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "values", "[Ljava/lang/Object;", "I", "collection"}, m754k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSparseArrayCompat.jvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SparseArrayCompat.jvm.kt\nandroidx/collection/SparseArrayCompat\n+ 2 SparseArrayCompat.kt\nandroidx/collection/SparseArrayCompatKt\n+ 3 CollectionPlatformUtils.jvm.kt\nandroidx/collection/CollectionPlatformUtils\n*L\n1#1,263:1\n250#2,9:264\n263#2,5:273\n271#2,5:278\n279#2,7:283\n294#2,9:290\n327#2,30:299\n360#2,2:329\n327#2,37:331\n367#2,3:368\n327#2,30:371\n371#2:401\n376#2,4:402\n383#2:406\n387#2,4:407\n395#2,5:411\n401#2:417\n406#2,5:418\n414#2,4:423\n422#2,9:427\n435#2:436\n440#2:437\n422#2,9:438\n445#2,8:447\n456#2,17:455\n476#2,21:472\n24#3:416\n*S KotlinDebug\n*F\n+ 1 SparseArrayCompat.jvm.kt\nandroidx/collection/SparseArrayCompat\n*L\n123#1:264,9\n126#1:273,5\n135#1:278,5\n144#1:283,7\n155#1:290,9\n161#1:299,30\n168#1:329,2\n168#1:331,37\n179#1:368,3\n179#1:371,30\n179#1:401\n182#1:402,4\n198#1:406\n204#1:407,4\n210#1:411,5\n210#1:417\n216#1:418,5\n226#1:423,4\n238#1:427,9\n241#1:436\n244#1:437\n244#1:438,9\n247#1:447,8\n253#1:455,17\n261#1:472,21\n210#1:416\n*E\n"})
public class SparseArrayCompat<E> implements Cloneable {

    @JvmField
    public /* synthetic */ boolean garbage;

    @JvmField
    public /* synthetic */ int[] keys;

    @JvmField
    public /* synthetic */ int size;

    @JvmField
    public /* synthetic */ Object[] values;

    @JvmOverloads
    public SparseArrayCompat() {
        this(0, 1, null);
    }

    @JvmOverloads
    public SparseArrayCompat(int i) {
        if (i == 0) {
            this.keys = ContainerHelpersKt.EMPTY_INTS;
            this.values = ContainerHelpersKt.EMPTY_OBJECTS;
        } else {
            int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i);
            this.keys = new int[iIdealIntArraySize];
            this.values = new Object[iIdealIntArraySize];
        }
    }

    public /* synthetic */ SparseArrayCompat(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 10 : i);
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SparseArrayCompat<E> m1638clone() {
        SparseArrayCompat<E> sparseArrayCompat = (SparseArrayCompat) super.clone();
        sparseArrayCompat.keys = (int[]) this.keys.clone();
        sparseArrayCompat.values = (Object[]) this.values.clone();
        return sparseArrayCompat;
    }

    public E get(int key) {
        return (E) SparseArrayCompatKt.commonGet(this, key);
    }

    public void put(int key, E value) {
        int iBinarySearch = ContainerHelpersKt.binarySearch(this.keys, this.size, key);
        if (iBinarySearch >= 0) {
            this.values[iBinarySearch] = value;
            return;
        }
        int i = ~iBinarySearch;
        if (i < this.size && this.values[i] == SparseArrayCompatKt.DELETED) {
            this.keys[i] = key;
            this.values[i] = value;
            return;
        }
        if (this.garbage && this.size >= this.keys.length) {
            SparseArrayCompatKt.gc(this);
            i = ~ContainerHelpersKt.binarySearch(this.keys, this.size, key);
        }
        int i2 = this.size;
        if (i2 >= this.keys.length) {
            int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i2 + 1);
            this.keys = Arrays.copyOf(this.keys, iIdealIntArraySize);
            this.values = Arrays.copyOf(this.values, iIdealIntArraySize);
        }
        int i3 = this.size;
        if (i3 - i != 0) {
            int[] iArr = this.keys;
            int i4 = i + 1;
            ArraysKt.copyInto(iArr, iArr, i4, i, i3);
            Object[] objArr = this.values;
            ArraysKt.copyInto(objArr, objArr, i4, i, this.size);
        }
        this.keys[i] = key;
        this.values[i] = value;
        this.size++;
    }

    public int size() {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        return this.size;
    }

    public int keyAt(int index) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        return this.keys[index];
    }

    public E valueAt(int index) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        Object[] objArr = this.values;
        if (index >= objArr.length) {
            CollectionPlatformUtils collectionPlatformUtils = CollectionPlatformUtils.INSTANCE;
            throw new ArrayIndexOutOfBoundsException();
        }
        return (E) objArr[index];
    }

    public int indexOfValue(E value) {
        if (this.garbage) {
            SparseArrayCompatKt.gc(this);
        }
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.values[i2] == value) {
                return i2;
            }
        }
        return -1;
    }

    public void clear() {
        int i = this.size;
        Object[] objArr = this.values;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.size = 0;
        this.garbage = false;
    }

    public void append(int key, E value) {
        int i = this.size;
        if (i != 0 && key <= this.keys[i - 1]) {
            put(key, value);
            return;
        }
        if (this.garbage && i >= this.keys.length) {
            SparseArrayCompatKt.gc(this);
        }
        int i2 = this.size;
        if (i2 >= this.keys.length) {
            int iIdealIntArraySize = ContainerHelpersKt.idealIntArraySize(i2 + 1);
            this.keys = Arrays.copyOf(this.keys, iIdealIntArraySize);
            this.values = Arrays.copyOf(this.values, iIdealIntArraySize);
        }
        this.keys[i2] = key;
        this.values[i2] = value;
        this.size = i2 + 1;
    }

    public String toString() {
        if (size() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.size * 28);
        sb.append('{');
        int i = this.size;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(keyAt(i2));
            sb.append(SignatureVisitor.INSTANCEOF);
            E eValueAt = valueAt(i2);
            if (eValueAt != this) {
                sb.append(eValueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
