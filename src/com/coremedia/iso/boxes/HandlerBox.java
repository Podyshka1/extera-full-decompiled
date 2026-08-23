package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.coremedia.iso.Utf8;
import com.googlecode.mp4parser.AbstractFullBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public class HandlerBox extends AbstractFullBox {
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_0 = null;
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_1 = null;
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_2 = null;
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_3 = null;
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_4 = null;
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_5 = null;
    public static final Map readableTypes;

    /* JADX INFO: renamed from: a */
    private long f197a;

    /* JADX INFO: renamed from: b */
    private long f198b;

    /* JADX INFO: renamed from: c */
    private long f199c;
    private String handlerType;
    private String name;
    private long shouldBeZeroButAppleWritesHereSomeValue;
    private boolean zeroTerm;

    private static /* synthetic */ void ajc$preClinit() {
        Factory factory = new Factory("HandlerBox.java", HandlerBox.class);
        ajc$tjp_0 = factory.makeSJP("method-execution", factory.makeMethodSig("1", "getHandlerType", "com.coremedia.iso.boxes.HandlerBox", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "java.lang.String"), 78);
        ajc$tjp_1 = factory.makeSJP("method-execution", factory.makeMethodSig("1", "setName", "com.coremedia.iso.boxes.HandlerBox", "java.lang.String", "name", _UrlKt.FRAGMENT_ENCODE_SET, "void"), 87);
        ajc$tjp_2 = factory.makeSJP("method-execution", factory.makeMethodSig("1", "setHandlerType", "com.coremedia.iso.boxes.HandlerBox", "java.lang.String", "handlerType", _UrlKt.FRAGMENT_ENCODE_SET, "void"), 91);
        ajc$tjp_3 = factory.makeSJP("method-execution", factory.makeMethodSig("1", "getName", "com.coremedia.iso.boxes.HandlerBox", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "java.lang.String"), 95);
        ajc$tjp_4 = factory.makeSJP("method-execution", factory.makeMethodSig("1", "getHumanReadableTrackType", "com.coremedia.iso.boxes.HandlerBox", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "java.lang.String"), 99);
        ajc$tjp_5 = factory.makeSJP("method-execution", factory.makeMethodSig("1", "toString", "com.coremedia.iso.boxes.HandlerBox", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "java.lang.String"), 149);
    }

    static {
        ajc$preClinit();
        HashMap map = new HashMap();
        map.put("odsm", "ObjectDescriptorStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("crsm", "ClockReferenceStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("sdsm", "SceneDescriptionStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("m7sm", "MPEG7Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("ocsm", "ObjectContentInfoStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("ipsm", "IPMP Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("mjsm", "MPEG-J Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        map.put("mdir", "Apple Meta Data iTunes Reader");
        map.put("mp7b", "MPEG-7 binary XML");
        map.put("mp7t", "MPEG-7 XML");
        map.put("vide", "Video Track");
        map.put("soun", "Sound Track");
        map.put("hint", "Hint Track");
        map.put("appl", "Apple specific");
        map.put("meta", "Timed Metadata track - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        readableTypes = DesugarCollections.unmodifiableMap(map);
    }

    public HandlerBox() {
        super("hdlr");
        this.name = null;
        this.zeroTerm = true;
    }

    public String getHandlerType() {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_0, this, this));
        return this.handlerType;
    }

    public void setName(String str) {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_1, this, this, str));
        this.name = str;
    }

    public void setHandlerType(String str) {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_2, this, this, str));
        this.handlerType = str;
    }

    public String getName() {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_3, this, this));
        return this.name;
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    protected long getContentSize() {
        int iUtf8StringLengthInBytes;
        if (this.zeroTerm) {
            iUtf8StringLengthInBytes = Utf8.utf8StringLengthInBytes(this.name) + 25;
        } else {
            iUtf8StringLengthInBytes = Utf8.utf8StringLengthInBytes(this.name) + 24;
        }
        return iUtf8StringLengthInBytes;
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public void _parseDetails(ByteBuffer byteBuffer) {
        parseVersionAndFlags(byteBuffer);
        this.shouldBeZeroButAppleWritesHereSomeValue = IsoTypeReader.readUInt32(byteBuffer);
        this.handlerType = IsoTypeReader.read4cc(byteBuffer);
        this.f197a = IsoTypeReader.readUInt32(byteBuffer);
        this.f198b = IsoTypeReader.readUInt32(byteBuffer);
        this.f199c = IsoTypeReader.readUInt32(byteBuffer);
        if (byteBuffer.remaining() > 0) {
            String string = IsoTypeReader.readString(byteBuffer, byteBuffer.remaining());
            this.name = string;
            if (string.endsWith("\u0000")) {
                String str = this.name;
                this.name = str.substring(0, str.length() - 1);
                this.zeroTerm = true;
                return;
            }
            this.zeroTerm = false;
            return;
        }
        this.zeroTerm = false;
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    protected void getContent(ByteBuffer byteBuffer) {
        writeVersionAndFlags(byteBuffer);
        IsoTypeWriter.writeUInt32(byteBuffer, this.shouldBeZeroButAppleWritesHereSomeValue);
        byteBuffer.put(IsoFile.fourCCtoBytes(this.handlerType));
        IsoTypeWriter.writeUInt32(byteBuffer, this.f197a);
        IsoTypeWriter.writeUInt32(byteBuffer, this.f198b);
        IsoTypeWriter.writeUInt32(byteBuffer, this.f199c);
        String str = this.name;
        if (str != null) {
            byteBuffer.put(Utf8.convert(str));
        }
        if (this.zeroTerm) {
            byteBuffer.put((byte) 0);
        }
    }

    public String toString() {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_5, this, this));
        return "HandlerBox[handlerType=" + getHandlerType() + ";name=" + getName() + "]";
    }
}
