package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import okhttp3.internal.url._UrlKt;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes4.dex */
public class VideoMediaHeaderBox extends AbstractMediaHeaderBox {
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_0 = null;
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_1 = null;
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_2 = null;
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_3 = null;
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_4 = null;
    private int graphicsmode;
    private int[] opcolor;

    static {
        ajc$preClinit();
    }

    private static /* synthetic */ void ajc$preClinit() {
        Factory factory = new Factory("VideoMediaHeaderBox.java", VideoMediaHeaderBox.class);
        ajc$tjp_0 = factory.makeSJP("method-execution", factory.makeMethodSig("1", "getGraphicsmode", "com.coremedia.iso.boxes.VideoMediaHeaderBox", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "int"), 39);
        ajc$tjp_1 = factory.makeSJP("method-execution", factory.makeMethodSig("1", "getOpcolor", "com.coremedia.iso.boxes.VideoMediaHeaderBox", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "[I"), 43);
        ajc$tjp_2 = factory.makeSJP("method-execution", factory.makeMethodSig("1", "toString", "com.coremedia.iso.boxes.VideoMediaHeaderBox", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "java.lang.String"), 71);
        ajc$tjp_3 = factory.makeSJP("method-execution", factory.makeMethodSig("1", "setOpcolor", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "[I", "opcolor", _UrlKt.FRAGMENT_ENCODE_SET, "void"), 75);
        ajc$tjp_4 = factory.makeSJP("method-execution", factory.makeMethodSig("1", "setGraphicsmode", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "int", "graphicsmode", _UrlKt.FRAGMENT_ENCODE_SET, "void"), 79);
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public long getContentSize() {
        return 12L;
    }

    public VideoMediaHeaderBox() {
        super("vmhd");
        this.graphicsmode = 0;
        this.opcolor = new int[3];
        setFlags(1);
    }

    public int getGraphicsmode() {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_0, this, this));
        return this.graphicsmode;
    }

    public int[] getOpcolor() {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_1, this, this));
        return this.opcolor;
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public void _parseDetails(ByteBuffer byteBuffer) {
        parseVersionAndFlags(byteBuffer);
        this.graphicsmode = IsoTypeReader.readUInt16(byteBuffer);
        this.opcolor = new int[3];
        for (int i = 0; i < 3; i++) {
            this.opcolor[i] = IsoTypeReader.readUInt16(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public void getContent(ByteBuffer byteBuffer) {
        writeVersionAndFlags(byteBuffer);
        IsoTypeWriter.writeUInt16(byteBuffer, this.graphicsmode);
        for (int i : this.opcolor) {
            IsoTypeWriter.writeUInt16(byteBuffer, i);
        }
    }

    public String toString() {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_2, this, this));
        return "VideoMediaHeaderBox[graphicsmode=" + getGraphicsmode() + ";opcolor0=" + getOpcolor()[0] + ";opcolor1=" + getOpcolor()[1] + ";opcolor2=" + getOpcolor()[2] + "]";
    }
}
