package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.json.Json;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0019\bF\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\n\u0010\n\u001a\u00020\u000bH\u0096\u0080\u0004J\n\u0010\f\u001a\u00020\u000bH\u0096\u0080\u0004J\n\u0010\r\u001a\u00020\u000bH\u0096\u0080\u0004J\n\u0010\u000e\u001a\u00020\u000bH\u0096\u0080\u0004J\n\u0010\u000f\u001a\u00020\u000bH\u0096\u0080\u0004R\u000f\u0010\u0004\u001a\u00020\u0005X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\b\u001a\u00020\tX\u0082\u008e\b¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lkotlinx/serialization/json/internal/ComposerWithPrettyPrint;", "Lkotlinx/serialization/json/internal/Composer;", "writer", "Lkotlinx/serialization/json/internal/InternalJsonWriter;", "json", "Lkotlinx/serialization/json/Json;", "<init>", "(Lkotlinx/serialization/json/internal/InternalJsonWriter;Lkotlinx/serialization/json/Json;)V", "level", _UrlKt.FRAGMENT_ENCODE_SET, "indent", _UrlKt.FRAGMENT_ENCODE_SET, "unIndent", "nextItem", "nextItemIfNotFirst", "space", "kotlinx-serialization-json"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nComposers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composers.kt\nkotlinx/serialization/json/internal/ComposerWithPrettyPrint\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,101:1\n1#2:102\n*E\n"})
public final class ComposerWithPrettyPrint extends Composer {
    private final Json json;
    private int level;

    public ComposerWithPrettyPrint(InternalJsonWriter internalJsonWriter, Json json) {
        super(internalJsonWriter);
        this.json = json;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void indent() {
        setWritingFirst(true);
        this.level++;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void unIndent() {
        this.level--;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void nextItem() {
        setWritingFirst(false);
        print("\n");
        int i = this.level;
        for (int i2 = 0; i2 < i; i2++) {
            print(this.json.getConfiguration().getPrettyPrintIndent());
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void nextItemIfNotFirst() {
        if (getWritingFirst()) {
            setWritingFirst(false);
        } else {
            nextItem();
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void space() {
        print(' ');
    }
}
