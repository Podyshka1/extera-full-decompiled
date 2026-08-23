package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import okhttp3.internal.url._UrlKt;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes4.dex */
public class DataEntryUrlBox extends AbstractFullBox {
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_0 = null;

    static {
        ajc$preClinit();
    }

    private static /* synthetic */ void ajc$preClinit() {
        Factory factory = new Factory("DataEntryUrlBox.java", DataEntryUrlBox.class);
        ajc$tjp_0 = factory.makeSJP("method-execution", factory.makeMethodSig("1", "toString", "com.coremedia.iso.boxes.DataEntryUrlBox", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "java.lang.String"), 51);
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public long getContentSize() {
        return 4L;
    }

    public DataEntryUrlBox() {
        super("url ");
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public void _parseDetails(ByteBuffer byteBuffer) {
        parseVersionAndFlags(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public void getContent(ByteBuffer byteBuffer) {
        writeVersionAndFlags(byteBuffer);
    }

    public String toString() {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_0, this, this));
        return "DataEntryUrlBox[]";
    }
}
