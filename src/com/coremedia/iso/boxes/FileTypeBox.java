package com.coremedia.iso.boxes;

import com.coremedia.iso.IsoFile;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import com.googlecode.mp4parser.AbstractBox;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import org.aspectj.lang.JoinPoint;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes4.dex */
public class FileTypeBox extends AbstractBox {
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_0 = null;
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_1 = null;
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_2 = null;
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_3 = null;
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_4 = null;
    private static final /* synthetic */ JoinPoint.StaticPart ajc$tjp_5 = null;
    private List compatibleBrands;
    private String majorBrand;
    private long minorVersion;

    static {
        ajc$preClinit();
    }

    private static /* synthetic */ void ajc$preClinit() {
        Factory factory = new Factory("FileTypeBox.java", FileTypeBox.class);
        ajc$tjp_0 = factory.makeSJP("method-execution", factory.makeMethodSig("1", "getMajorBrand", "com.coremedia.iso.boxes.FileTypeBox", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "java.lang.String"), 85);
        ajc$tjp_1 = factory.makeSJP("method-execution", factory.makeMethodSig("1", "setMajorBrand", "com.coremedia.iso.boxes.FileTypeBox", "java.lang.String", "majorBrand", _UrlKt.FRAGMENT_ENCODE_SET, "void"), 94);
        ajc$tjp_2 = factory.makeSJP("method-execution", factory.makeMethodSig("1", "setMinorVersion", "com.coremedia.iso.boxes.FileTypeBox", "long", "minorVersion", _UrlKt.FRAGMENT_ENCODE_SET, "void"), 103);
        ajc$tjp_3 = factory.makeSJP("method-execution", factory.makeMethodSig("1", "getMinorVersion", "com.coremedia.iso.boxes.FileTypeBox", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "long"), 113);
        ajc$tjp_4 = factory.makeSJP("method-execution", factory.makeMethodSig("1", "getCompatibleBrands", "com.coremedia.iso.boxes.FileTypeBox", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "java.util.List"), 122);
        ajc$tjp_5 = factory.makeSJP("method-execution", factory.makeMethodSig("1", "setCompatibleBrands", "com.coremedia.iso.boxes.FileTypeBox", "java.util.List", "compatibleBrands", _UrlKt.FRAGMENT_ENCODE_SET, "void"), 126);
    }

    public FileTypeBox(String str, long j, List list) {
        super("ftyp");
        List list2 = Collections.EMPTY_LIST;
        this.majorBrand = str;
        this.minorVersion = j;
        this.compatibleBrands = list;
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    protected long getContentSize() {
        return (this.compatibleBrands.size() * 4) + 8;
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    public void _parseDetails(ByteBuffer byteBuffer) {
        this.majorBrand = IsoTypeReader.read4cc(byteBuffer);
        this.minorVersion = IsoTypeReader.readUInt32(byteBuffer);
        int iRemaining = byteBuffer.remaining() / 4;
        this.compatibleBrands = new LinkedList();
        for (int i = 0; i < iRemaining; i++) {
            this.compatibleBrands.add(IsoTypeReader.read4cc(byteBuffer));
        }
    }

    @Override // com.googlecode.mp4parser.AbstractBox
    protected void getContent(ByteBuffer byteBuffer) {
        byteBuffer.put(IsoFile.fourCCtoBytes(this.majorBrand));
        IsoTypeWriter.writeUInt32(byteBuffer, this.minorVersion);
        Iterator it = this.compatibleBrands.iterator();
        while (it.hasNext()) {
            byteBuffer.put(IsoFile.fourCCtoBytes((String) it.next()));
        }
    }

    public String getMajorBrand() {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_0, this, this));
        return this.majorBrand;
    }

    public long getMinorVersion() {
        RequiresParseDetailAspect.aspectOf().before(Factory.makeJP(ajc$tjp_3, this, this));
        return this.minorVersion;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FileTypeBox[");
        sb.append("majorBrand=");
        sb.append(getMajorBrand());
        sb.append(";");
        sb.append("minorVersion=");
        sb.append(getMinorVersion());
        for (String str : this.compatibleBrands) {
            sb.append(";");
            sb.append("compatibleBrand=");
            sb.append(str);
        }
        sb.append("]");
        return sb.toString();
    }
}
