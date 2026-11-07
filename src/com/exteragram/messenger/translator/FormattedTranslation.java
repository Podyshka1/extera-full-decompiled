package com.exteragram.messenger.translator;

import android.text.Editable;
import android.text.Html;
import android.text.TextUtils;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.translator.ChatTranslator;
import com.exteragram.messenger.translator.FormattedTranslation;
import com.exteragram.messenger.translator.core.HttpTranslator;
import com.exteragram.messenger.translator.core.TranslationError;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import kotlin.text.Typography;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLRPC;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001:\u00069:;<=>B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JM\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0007¢\u0006\u0004\b\u0013\u0010\u0014J9\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00152\u000e\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\b\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ-\u0010!\u001a\b\u0012\u0004\u0012\u00020 0\u00062\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u001cH\u0002¢\u0006\u0004\b!\u0010\"J/\u0010%\u001a\u00020 2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020\u001cH\u0002¢\u0006\u0004\b%\u0010&J5\u0010)\u001a\u00020(2\u0006\u0010\u001e\u001a\u00020\u00072\f\u0010'\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00062\u0006\u0010#\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020\u001cH\u0002¢\u0006\u0004\b)\u0010*J\u001f\u0010-\u001a\u00020(2\u0006\u0010+\u001a\u00020 2\u0006\u0010,\u001a\u00020\tH\u0002¢\u0006\u0004\b-\u0010.J'\u00100\u001a\u00020/2\u0006\u0010\u001e\u001a\u00020/2\u0006\u0010#\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020\u001cH\u0002¢\u0006\u0004\b0\u00101J\u0019\u00104\u001a\u00020\u00122\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0000¢\u0006\u0004\b2\u00103R$\u00107\u001a\u0012\u0012\u0004\u0012\u00020\u001505j\b\u0012\u0004\u0012\u00020\u0015`68\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108¨\u0006?"}, d2 = {"Lcom/exteragram/messenger/translator/FormattedTranslation;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "dialogId", _UrlKt.FRAGMENT_ENCODE_SET, "Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;", PluginsConstants.Settings.TYPE_INPUT, _UrlKt.FRAGMENT_ENCODE_SET, "fromLang", "toLang", "Lcom/exteragram/messenger/translator/core/HttpTranslator;", "translator", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.MenuItemProperties.PRIORITY, "Lcom/exteragram/messenger/translator/FormattedTranslation$Callback;", com.sun.jna.Callback.METHOD_NAME, _UrlKt.FRAGMENT_ENCODE_SET, "translate", "(JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/exteragram/messenger/translator/core/HttpTranslator;ZLcom/exteragram/messenger/translator/FormattedTranslation$Callback;)V", "Lcom/exteragram/messenger/translator/FormattedTranslation$Job;", "job", "results", "Lcom/exteragram/messenger/translator/core/TranslationError;", "error", "finish", "(Lcom/exteragram/messenger/translator/FormattedTranslation$Job;Ljava/util/List;Lcom/exteragram/messenger/translator/core/TranslationError;Lcom/exteragram/messenger/translator/FormattedTranslation$Callback;)V", _UrlKt.FRAGMENT_ENCODE_SET, "message", "source", "limit", "Lcom/exteragram/messenger/translator/FormattedTranslation$Part;", "split", "(ILorg/telegram/tgnet/TLRPC$TL_textWithEntities;I)Ljava/util/List;", "start", "end", "encode", "(ILorg/telegram/tgnet/TLRPC$TL_textWithEntities;II)Lcom/exteragram/messenger/translator/FormattedTranslation$Part;", "entities", "Lcom/exteragram/messenger/translator/FormattedTranslation$Decoded;", "originalRange", "(Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;Ljava/util/List;II)Lcom/exteragram/messenger/translator/FormattedTranslation$Decoded;", "part", "html", "decode", "(Lcom/exteragram/messenger/translator/FormattedTranslation$Part;Ljava/lang/String;)Lcom/exteragram/messenger/translator/FormattedTranslation$Decoded;", "Lorg/telegram/tgnet/TLRPC$MessageEntity;", "copyEntity", "(Lorg/telegram/tgnet/TLRPC$MessageEntity;II)Lorg/telegram/tgnet/TLRPC$MessageEntity;", "cancel$TMessagesProj", "(Ljava/lang/Long;)V", "cancel", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "jobs", "Ljava/util/HashSet;", "Callback", "Job", "Segment", "Part", "Range", "Decoded", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFormattedTranslation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FormattedTranslation.kt\ncom/exteragram/messenger/translator/FormattedTranslation\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 String.kt\nandroidx/core/text/StringKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,330:1\n1586#2:331\n1661#2,3:332\n777#2:335\n873#2,2:336\n777#2:338\n873#2,2:339\n1807#2,3:342\n1642#2,10:345\n1915#2:355\n1916#2:357\n1652#2:358\n1586#2:359\n1661#2,3:360\n1596#2:363\n1629#2,4:364\n1596#2:368\n1629#2,3:369\n777#2:372\n873#2,2:373\n1807#2,3:375\n1021#2,2:378\n1632#2:380\n1586#2:381\n1661#2,3:382\n1586#2:385\n1661#2,3:386\n1586#2:389\n1661#2,3:390\n1586#2:393\n1661#2,3:394\n1807#2,3:397\n28#3:341\n1#4:356\n*S KotlinDebug\n*F\n+ 1 FormattedTranslation.kt\ncom/exteragram/messenger/translator/FormattedTranslation\n*L\n158#1:331\n158#1:332,3\n193#1:335\n193#1:336,2\n211#1:338\n211#1:339,2\n217#1:342,3\n236#1:345,10\n236#1:355\n236#1:357\n236#1:358\n87#1:359\n87#1:360,3\n101#1:363\n101#1:364,4\n111#1:368\n111#1:369,3\n112#1:372\n112#1:373,2\n113#1:375,3\n140#1:378,2\n111#1:380\n92#1:381\n92#1:382,3\n96#1:385\n96#1:386,3\n96#1:389\n96#1:390,3\n71#1:393\n71#1:394,3\n79#1:397,3\n213#1:341\n236#1:356\n*E\n"})
public final class FormattedTranslation {
    public static final FormattedTranslation INSTANCE = new FormattedTranslation();
    private static final HashSet<Job> jobs = new HashSet<>();

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&¨\u0006\tÀ\u0006\u0003"}, d2 = {"Lcom/exteragram/messenger/translator/FormattedTranslation$Callback;", _UrlKt.FRAGMENT_ENCODE_SET, "onResult", _UrlKt.FRAGMENT_ENCODE_SET, "results", _UrlKt.FRAGMENT_ENCODE_SET, "Lorg/telegram/tgnet/TLRPC$TL_textWithEntities;", "error", "Lcom/exteragram/messenger/translator/core/TranslationError;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public interface Callback {
        void onResult(List<? extends TLRPC.TL_textWithEntities> results, TranslationError error);
    }

    private FormattedTranslation() {
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/exteragram/messenger/translator/FormattedTranslation$Job;", _UrlKt.FRAGMENT_ENCODE_SET, "dialogId", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(J)V", "getDialogId", "()J", "cancelled", _UrlKt.FRAGMENT_ENCODE_SET, "getCancelled", "()Z", "setCancelled", "(Z)V", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Job {
        private boolean cancelled;
        private final long dialogId;

        public Job(long j) {
            this.dialogId = j;
        }

        public final long getDialogId() {
            return this.dialogId;
        }

        public final boolean getCancelled() {
            return this.cancelled;
        }

        public final void setCancelled(boolean z) {
            this.cancelled = z;
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/exteragram/messenger/translator/FormattedTranslation$Segment;", _UrlKt.FRAGMENT_ENCODE_SET, "text", _UrlKt.FRAGMENT_ENCODE_SET, "entities", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "protected", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;Ljava/util/List;Z)V", "getText", "()Ljava/lang/String;", "getEntities", "()Ljava/util/List;", "getProtected", "()Z", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Segment {
        private final List<Integer> entities;
        private final boolean protected;
        private final String text;

        public Segment(String str, List<Integer> list, boolean z) {
            this.text = str;
            this.entities = list;
            this.protected = z;
        }

        public final List<Integer> getEntities() {
            return this.entities;
        }

        public final boolean getProtected() {
            return this.protected;
        }

        public final String getText() {
            return this.text;
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\b\u0002\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u000b\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/exteragram/messenger/translator/FormattedTranslation$Part;", _UrlKt.FRAGMENT_ENCODE_SET, "message", _UrlKt.FRAGMENT_ENCODE_SET, "html", _UrlKt.FRAGMENT_ENCODE_SET, "segments", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/translator/FormattedTranslation$Segment;", "leading", "Lcom/exteragram/messenger/translator/FormattedTranslation$Decoded;", "trailing", "<init>", "(ILjava/lang/String;Ljava/util/List;Lcom/exteragram/messenger/translator/FormattedTranslation$Decoded;Lcom/exteragram/messenger/translator/FormattedTranslation$Decoded;)V", "getMessage", "()I", "getHtml", "()Ljava/lang/String;", "getSegments", "()Ljava/util/List;", "getLeading", "()Lcom/exteragram/messenger/translator/FormattedTranslation$Decoded;", "getTrailing", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Part {
        private final String html;
        private final Decoded leading;
        private final int message;
        private final List<Segment> segments;
        private final Decoded trailing;

        public Part(int i, String str, List<Segment> list, Decoded decoded, Decoded decoded2) {
            this.message = i;
            this.html = str;
            this.segments = list;
            this.leading = decoded;
            this.trailing = decoded2;
        }

        public final String getHtml() {
            return this.html;
        }

        public final int getMessage() {
            return this.message;
        }

        public final List<Segment> getSegments() {
            return this.segments;
        }

        public final Decoded getLeading() {
            return this.leading;
        }

        public final Decoded getTrailing() {
            return this.trailing;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\t\"\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/exteragram/messenger/translator/FormattedTranslation$Range;", _UrlKt.FRAGMENT_ENCODE_SET, "entity", _UrlKt.FRAGMENT_ENCODE_SET, "start", "end", "<init>", "(III)V", "getEntity", "()I", "getStart", "getEnd", "setEnd", "(I)V", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Range {
        private int end;
        private final int entity;
        private final int start;

        public Range(int i, int i2, int i3) {
            this.entity = i;
            this.start = i2;
            this.end = i3;
        }

        public final int getEnd() {
            return this.end;
        }

        public final int getEntity() {
            return this.entity;
        }

        public final int getStart() {
            return this.start;
        }

        public final void setEnd(int i) {
            this.end = i;
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/exteragram/messenger/translator/FormattedTranslation$Decoded;", _UrlKt.FRAGMENT_ENCODE_SET, "text", _UrlKt.FRAGMENT_ENCODE_SET, "ranges", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/translator/FormattedTranslation$Range;", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "getText", "()Ljava/lang/String;", "getRanges", "()Ljava/util/List;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Decoded {
        private final List<Range> ranges;
        private final String text;

        public Decoded(String str, List<Range> list) {
            this.text = str;
            this.ranges = list;
        }

        public final List<Range> getRanges() {
            return this.ranges;
        }

        public final String getText() {
            return this.text;
        }
    }

    public final void cancel$TMessagesProj(Long dialogId) {
        for (Job job : jobs) {
            if (dialogId == null || job.getDialogId() == dialogId.longValue()) {
                job.setCancelled(true);
            }
        }
    }

    @JvmStatic
    public static final void translate(final long dialogId, final List<? extends TLRPC.TL_textWithEntities> input, final String fromLang, final String toLang, final HttpTranslator translator, final boolean priority, final Callback callback) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.translator.FormattedTranslation$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                FormattedTranslation.$r8$lambda$tJaxpLiZJ0CVakcNhTQnLbWbpH4(input, dialogId, translator, callback, toLang, fromLang, priority);
            }
        });
    }

    public static void $r8$lambda$tJaxpLiZJ0CVakcNhTQnLbWbpH4(List list, final long j, final HttpTranslator httpTranslator, final Callback callback, final String str, final String str2, final boolean z) {
        List<TLRPC.TL_textWithEntities> list2 = list;
        final ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        for (TLRPC.TL_textWithEntities tL_textWithEntities : list2) {
            TLRPC.TL_textWithEntities tL_textWithEntities2 = new TLRPC.TL_textWithEntities();
            tL_textWithEntities2.text = tL_textWithEntities.text;
            tL_textWithEntities2.entities = new ArrayList<>(tL_textWithEntities.entities);
            arrayList.add(tL_textWithEntities2);
        }
        final Job job = new Job(j);
        jobs.add(job);
        boolean z2 = false;
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                Object obj = arrayList.get(i);
                i++;
                if (!((TLRPC.TL_textWithEntities) obj).entities.isEmpty()) {
                    z2 = true;
                    break;
                }
            }
        }
        final boolean z3 = z2;
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.translator.FormattedTranslation$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                FormattedTranslation.$r8$lambda$OM2FCQ3Bez8YFYi3IpyTS_drPN4(z3, arrayList, httpTranslator, job, callback, j, str, str2, z);
            }
        });
    }

    public static void $r8$lambda$OM2FCQ3Bez8YFYi3IpyTS_drPN4(final boolean z, final List list, final HttpTranslator httpTranslator, final Job job, final Callback callback, final long j, final String str, final String str2, final boolean z2) {
        List listEmptyList;
        try {
            if (z) {
                listEmptyList = new ArrayList();
                int i = 0;
                for (Object obj : list) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt.throwIndexOverflow();
                    }
                    CollectionsKt.addAll(listEmptyList, INSTANCE.split(i, (TLRPC.TL_textWithEntities) obj, Math.min(httpTranslator.getLimits().getMaxCharsPerText(), httpTranslator.getLimits().getMaxCharsPerRequest())));
                    i = i2;
                }
            } else {
                listEmptyList = CollectionsKt.emptyList();
            }
            final List list2 = listEmptyList;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.translator.FormattedTranslation$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    FormattedTranslation.m3308$r8$lambda$soxMybM5PlCOaBeVvD2dS2Uh4c(job, list, callback, j, z, list2, str, httpTranslator, str2, z2);
                }
            });
        } catch (Exception e) {
            FileLog.m1040e(e);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.translator.FormattedTranslation$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    FormattedTranslation.$r8$lambda$1e2DKPlZGW6_vsBbtd9Ypbpq_Hc(job, list, callback);
                }
            });
        }
    }

    public static void $r8$lambda$1e2DKPlZGW6_vsBbtd9Ypbpq_Hc(Job job, List list, Callback callback) {
        FormattedTranslation formattedTranslation = INSTANCE;
        List<TLRPC.TL_textWithEntities> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        for (TLRPC.TL_textWithEntities tL_textWithEntities : list2) {
            arrayList.add(null);
        }
        formattedTranslation.finish(job, arrayList, TranslationError.Fatal.INSTANCE, callback);
    }

    /* JADX INFO: renamed from: $r8$lambda$soxMybM5PlCO-aBeVvD2dS2Uh4c, reason: not valid java name */
    public static void m3308$r8$lambda$soxMybM5PlCOaBeVvD2dS2Uh4c(final Job job, final List list, final Callback callback, long j, final boolean z, final List list2, final String str, final HttpTranslator httpTranslator, final String str2, boolean z2) {
        ArrayList arrayList;
        if (job.getCancelled()) {
            FormattedTranslation formattedTranslation = INSTANCE;
            List<TLRPC.TL_textWithEntities> list3 = list;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
            for (TLRPC.TL_textWithEntities tL_textWithEntities : list3) {
                arrayList2.add(null);
            }
            formattedTranslation.finish(job, arrayList2, TranslationError.Cancelled.INSTANCE, callback);
            return;
        }
        ChatTranslator chatTranslator = ChatTranslator.INSTANCE;
        if (z) {
            List list4 = list2;
            arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list4, 10));
            Iterator it = list4.iterator();
            while (it.hasNext()) {
                arrayList.add(((Part) it.next()).getHtml());
            }
        } else {
            List list5 = list;
            arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list5, 10));
            Iterator it2 = list5.iterator();
            while (it2.hasNext()) {
                String str3 = ((TLRPC.TL_textWithEntities) it2.next()).text;
                if (str3 == null) {
                    str3 = _UrlKt.FRAGMENT_ENCODE_SET;
                }
                arrayList.add(str3);
            }
        }
        chatTranslator.translate$TMessagesProj(j, arrayList, str, httpTranslator, str2, z, z2, new ChatTranslator.Callback() { // from class: com.exteragram.messenger.translator.FormattedTranslation$$ExternalSyntheticLambda4
            @Override // com.exteragram.messenger.translator.ChatTranslator.Callback
            public final void onResult(List list6, TranslationError translationError) {
                Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.translator.FormattedTranslation$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        FormattedTranslation.m3305$r8$lambda$6fv7XK0ykAO8JNo7AxgMKsxvH4(translationError, list6, list, z, list, httpTranslator, str, str, job, callback);
                    }
                });
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x011e, code lost:
    
        r0 = new java.lang.StringBuilder();
        r10 = new java.util.ArrayList();
        r11 = r11.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0130, code lost:
    
        if (r11.hasNext() == false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0132, code lost:
    
        r12 = (com.exteragram.messenger.translator.FormattedTranslation.Decoded) r3.get(((java.lang.Number) r11.next()).intValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0142, code lost:
    
        if (r12 != null) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0145, code lost:
    
        r13 = r12.getRanges().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0151, code lost:
    
        if (r13.hasNext() == false) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0153, code lost:
    
        r14 = r13.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x015d, code lost:
    
        r10.add(new com.exteragram.messenger.translator.FormattedTranslation.Range(r14.getEntity(), r0.length() + r14.getStart(), r0.length() + r14.getEnd()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x017c, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0184, code lost:
    
        r0.append(r12.getText());
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x018e, code lost:
    
        r6 = new org.telegram.tgnet.TLRPC.TL_textWithEntities();
        r6.text = r0.toString();
        r8 = new java.util.ArrayList();
        r10 = kotlin.collections.CollectionsKt.sortedWith(r10, kotlin.comparisons.ComparisonsKt.compareBy(new com.exteragram.messenger.translator.FormattedTranslation$$ExternalSyntheticLambda6(), new com.exteragram.messenger.translator.FormattedTranslation$$ExternalSyntheticLambda7())).iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01c2, code lost:
    
        if (r10.hasNext() == false) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01c4, code lost:
    
        r12 = (com.exteragram.messenger.translator.FormattedTranslation.Range) r10.next();
        r13 = (com.exteragram.messenger.translator.FormattedTranslation.Range) kotlin.collections.CollectionsKt.lastOrNull((java.util.List) r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01d0, code lost:
    
        if (r13 == null) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01da, code lost:
    
        if (r13.getEntity() != r12.getEntity()) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01e4, code lost:
    
        if (r13.getEnd() > r12.getStart()) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01f6, code lost:
    
        if (kotlin.text.StringsKt.isBlank(r0.substring(r13.getEnd(), r12.getStart())) == false) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01f8, code lost:
    
        r13.setEnd(r12.getEnd());
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0200, code lost:
    
        r8.add(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0204, code lost:
    
        r0 = r8.size();
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x020a, code lost:
    
        if (r10 >= r0) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x020c, code lost:
    
        r12 = r8.get(r10);
        r10 = r10 + 1;
        r12 = (com.exteragram.messenger.translator.FormattedTranslation.Range) r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x021c, code lost:
    
        if (r12.getEnd() <= r12.getStart()) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x021e, code lost:
    
        r6.entities.add(com.exteragram.messenger.translator.FormattedTranslation.INSTANCE.copyEntity(r7.entities.get(r12.getEntity()), r12.getStart(), r12.getEnd()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x023f, code lost:
    
        r0 = r6.entities;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0246, code lost:
    
        if (r0.size() <= 1) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0248, code lost:
    
        kotlin.collections.CollectionsKt.sortWith(r0, new com.exteragram.messenger.translator.C1526x97fde9de());
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0251, code lost:
    
        org.telegram.messenger.FileLog.m1040e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0256, code lost:
    
        if (r2.element == 0) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0258, code lost:
    
        r2.element = com.exteragram.messenger.translator.core.TranslationError.Fatal.INSTANCE;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:99:0x011e A[EDGE_INSN: B:99:0x011e->B:54:0x011e BREAK  A[LOOP:7: B:48:0x0103->B:140:?], EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v17, types: [T, com.exteragram.messenger.translator.core.TranslationError$Fatal] */
    /* JADX WARN: Type inference failed for: r0v26, types: [T, com.exteragram.messenger.translator.core.TranslationError$Transient] */
    /* JADX INFO: renamed from: $r8$lambda$6fv7XK0ykAO8JNo7AxgMK-sxvH4, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m3305$r8$lambda$6fv7XK0ykAO8JNo7AxgMKsxvH4(TranslationError translationError, List list, List list2, boolean z, List list3, HttpTranslator httpTranslator, String str, String str2, final Job job, final Callback callback) {
        List listListOf;
        TLRPC.TL_textWithEntities tL_textWithEntities;
        Decoded decodedDecode;
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = translationError;
        List list4 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list4, 10));
        int i = 0;
        for (Object obj : list4) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            String str3 = (String) obj;
            if (str3 != null) {
                if (z) {
                    try {
                        decodedDecode = INSTANCE.decode((Part) list3.get(i), str3);
                    } catch (Exception e) {
                        FileLog.m1040e(e);
                        if (z) {
                            ChatTranslator.INSTANCE.invalidate$TMessagesProj(httpTranslator, str, str2, ((Part) list3.get(i)).getHtml());
                        }
                        if (objectRef.element == 0) {
                            objectRef.element = TranslationError.Transient.INSTANCE;
                        }
                        decodedDecode = null;
                    }
                } else {
                    decodedDecode = new Decoded(str3, CollectionsKt.emptyList());
                }
                arrayList.add(decodedDecode);
                i = i2;
            }
            decodedDecode = null;
            arrayList.add(decodedDecode);
            i = i2;
        }
        List list5 = list2;
        final ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list5, 10));
        int i3 = 0;
        for (Object obj2 : list5) {
            int i4 = i3 + 1;
            if (i3 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            TLRPC.TL_textWithEntities tL_textWithEntities2 = (TLRPC.TL_textWithEntities) obj2;
            if (z) {
                IntRange indices = CollectionsKt.getIndices(list3);
                listListOf = new ArrayList();
                for (Integer num : indices) {
                    if (((Part) list3.get(num.intValue())).getMessage() == i3) {
                        listListOf.add(num);
                    }
                }
            } else {
                listListOf = CollectionsKt.listOf(Integer.valueOf(i3));
            }
            List list6 = listListOf;
            if (!(list6 instanceof Collection) || !list6.isEmpty()) {
                Iterator it = list6.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (arrayList.get(((Number) it.next()).intValue()) == null) {
                            break;
                        }
                    } else {
                        try {
                            break;
                        } catch (Exception e2) {
                            e = e2;
                        }
                    }
                }
                tL_textWithEntities = null;
            }
            arrayList2.add(tL_textWithEntities);
            i3 = i4;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.translator.FormattedTranslation$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                FormattedTranslation.INSTANCE.finish(job, arrayList2, (TranslationError) objectRef.element, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void finish(Job job, List<? extends TLRPC.TL_textWithEntities> results, TranslationError error, Callback callback) {
        jobs.remove(job);
        if (job.getCancelled()) {
            List<? extends TLRPC.TL_textWithEntities> list = results;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            for (TLRPC.TL_textWithEntities tL_textWithEntities : list) {
                arrayList.add(null);
            }
            results = arrayList;
        }
        if (job.getCancelled()) {
            error = TranslationError.Cancelled.INSTANCE;
        }
        callback.onResult(results, error);
    }

    private final List<Part> split(int message, TLRPC.TL_textWithEntities source, int limit) {
        String str = source.text;
        if (str == null) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String str2 = str;
        int i = 0;
        if (str2.length() <= limit) {
            Part partEncode = encode(message, source, 0, str2.length());
            if (partEncode.getHtml().length() <= limit) {
                return CollectionsKt.listOf(partEncode);
            }
        }
        ArrayList arrayList = new ArrayList();
        do {
            int i2 = i;
            int iMin = Math.min(str2.length(), i2 + limit);
            int i3 = i2;
            while (i3 < iMin) {
                int i4 = (((iMin - i3) + 1) / 2) + i3;
                if (encode(message, source, i2, i4).getHtml().length() <= limit) {
                    i3 = i4;
                } else {
                    iMin = i4 - 1;
                }
            }
            if (i3 < str2.length()) {
                int i5 = i3 - 1;
                int iLastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str2, '\n', i5, false, 4, (Object) null);
                int iLastIndexOf$default2 = StringsKt.lastIndexOf$default((CharSequence) str2, ' ', i5, false, 4, (Object) null);
                if (iLastIndexOf$default <= i2) {
                    iLastIndexOf$default = iLastIndexOf$default2;
                }
                if (iLastIndexOf$default > i2) {
                    i3 = iLastIndexOf$default + 1;
                }
                if (i3 > i2 && Character.isHighSurrogate(str2.charAt(i3 - 1)) && Character.isLowSurrogate(str2.charAt(i3))) {
                    i3--;
                }
            }
            i = i3;
            if (i <= i2 && str2.length() != 0) {
                f$$ExternalSyntheticBUOutline1.m215m("Failed requirement.");
                return null;
            }
            arrayList.add(encode(message, source, i2, i));
        } while (i < str2.length());
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x01e4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final Part encode(int message, TLRPC.TL_textWithEntities source, int start, int end) {
        String str;
        boolean z;
        int i;
        int i2;
        String str2 = source.text;
        if (str2 == null) {
            str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        IntRange indices = CollectionsKt.getIndices(source.entities);
        ArrayList arrayList = new ArrayList();
        for (Integer num : indices) {
            TLRPC.MessageEntity messageEntity = source.entities.get(num.intValue());
            int i3 = messageEntity.offset;
            if (i3 >= 0 && (i = messageEntity.length) > 0 && ((long) i3) + ((long) i) <= str2.length() && (i2 = messageEntity.offset) < end && i2 + messageEntity.length > start) {
                arrayList.add(num);
            }
        }
        int i4 = start;
        while (i4 < end && CharsKt.isWhitespace(str2.charAt(i4))) {
            i4++;
        }
        int i5 = end;
        while (i5 > i4 && CharsKt.isWhitespace(str2.charAt(i5 - 1))) {
            i5--;
        }
        TreeSet treeSetSortedSetOf = SetsKt.sortedSetOf(Integer.valueOf(i4), Integer.valueOf(i5));
        int size = arrayList.size();
        int i6 = 0;
        while (i6 < size) {
            Object obj = arrayList.get(i6);
            i6++;
            TLRPC.MessageEntity messageEntity2 = source.entities.get(((Number) obj).intValue());
            treeSetSortedSetOf.add(Integer.valueOf(RangesKt.coerceIn(messageEntity2.offset, i4, i5)));
            treeSetSortedSetOf.add(Integer.valueOf(RangesKt.coerceIn(messageEntity2.offset + messageEntity2.length, i4, i5)));
        }
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = CollectionsKt.zipWithNext(treeSetSortedSetOf).iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            int iIntValue = ((Number) pair.component1()).intValue();
            int iIntValue2 = ((Number) pair.component2()).intValue();
            ArrayList arrayList3 = new ArrayList();
            int size2 = arrayList.size();
            int i7 = 0;
            while (i7 < size2) {
                Iterator it2 = it;
                Object obj2 = arrayList.get(i7);
                int i8 = i7 + 1;
                int iIntValue3 = ((Number) obj2).intValue();
                int i9 = size2;
                if (source.entities.get(iIntValue3).offset <= iIntValue && source.entities.get(iIntValue3).offset + source.entities.get(iIntValue3).length >= iIntValue2) {
                    arrayList3.add(obj2);
                }
                it = it2;
                size2 = i9;
                i7 = i8;
            }
            Iterator it3 = it;
            String strSubstring = str2.substring(iIntValue, iIntValue2);
            String strReplace$default = StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(TextUtils.htmlEncode(strSubstring), "\n", "<br>", false, 4, (Object) null), "\r", "&#13;", false, 4, (Object) null), "\t", "&#9;", false, 4, (Object) null);
            if (arrayList3.isEmpty()) {
                sb.append(strReplace$default);
                str = str2;
            } else if (arrayList3.isEmpty()) {
                str = str2;
                z = false;
                sb.append("<span id=\"tg" + arrayList2.size() + "\"");
                if (z) {
                    sb.append(" translate=\"no\" class=\"notranslate\"");
                }
                sb.append(Typography.greater);
                sb.append(strReplace$default);
                sb.append("</span>");
                arrayList2.add(new Segment(strSubstring, arrayList3, z));
            } else {
                int size3 = arrayList3.size();
                int i10 = 0;
                while (i10 < size3) {
                    Object obj3 = arrayList3.get(i10);
                    i10++;
                    str = str2;
                    TLRPC.MessageEntity messageEntity3 = source.entities.get(((Number) obj3).intValue());
                    if (!(messageEntity3 instanceof TLRPC.TL_messageEntityBold) && !(messageEntity3 instanceof TLRPC.TL_messageEntityItalic) && !(messageEntity3 instanceof TLRPC.TL_messageEntityUnderline) && !(messageEntity3 instanceof TLRPC.TL_messageEntityStrike) && !(messageEntity3 instanceof TLRPC.TL_messageEntitySpoiler) && !(messageEntity3 instanceof TLRPC.TL_messageEntityBlockquote) && !(messageEntity3 instanceof TLRPC.TL_messageEntityTextUrl)) {
                        z = true;
                        break;
                    }
                    str2 = str;
                }
                str = str2;
                z = false;
                sb.append("<span id=\"tg" + arrayList2.size() + "\"");
                if (z) {
                }
                sb.append(Typography.greater);
                sb.append(strReplace$default);
                sb.append("</span>");
                arrayList2.add(new Segment(strSubstring, arrayList3, z));
            }
            it = it3;
            str2 = str;
        }
        return new Part(message, sb.toString(), arrayList2, originalRange(source, arrayList, start, i4), originalRange(source, arrayList, i5, end));
    }

    private final Decoded originalRange(TLRPC.TL_textWithEntities source, List<Integer> entities, int start, int end) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = entities.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            TLRPC.MessageEntity messageEntity = source.entities.get(iIntValue);
            int iMax = Math.max(start, messageEntity.offset);
            int iMin = Math.min(end, messageEntity.offset + messageEntity.length);
            Range range = iMax < iMin ? new Range(iIntValue, iMax - start, iMin - start) : null;
            if (range != null) {
                arrayList.add(range);
            }
        }
        String str = source.text;
        if (str == null) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return new Decoded(str.substring(start, end), arrayList);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.exteragram.messenger.translator.FormattedTranslation$decode$handler$1] */
    private final Decoded decode(final Part part, String html) {
        final StringBuilder sb = new StringBuilder();
        final ArrayList<Range> arrayList = new ArrayList();
        final HashSet hashSet = new HashSet();
        final ?? r2 = new DefaultHandler() { // from class: com.exteragram.messenger.translator.FormattedTranslation$decode$handler$1
            private Integer active;
            private int activeDepth;
            private int depth;
            private int start;

            public final Integer getActive() {
                return this.active;
            }

            @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
            public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
                this.depth++;
                if (Intrinsics.areEqual(localName, "script") || Intrinsics.areEqual(localName, "style")) {
                    throw new SAXException("Unexpected translation markup");
                }
                if (Intrinsics.areEqual(localName, "br")) {
                    sb.append('\n');
                }
                String value = attributes.getValue("id");
                if (value == null || !StringsKt.startsWith$default(value, "tg", false, 2, (Object) null)) {
                    return;
                }
                Integer intOrNull = StringsKt.toIntOrNull(value.substring(2));
                if (intOrNull == null || !CollectionsKt.getIndices(part.getSegments()).contains(intOrNull.intValue()) || this.active != null) {
                    throw new SAXException("Invalid translation span");
                }
                this.active = intOrNull;
                this.activeDepth = this.depth;
                this.start = sb.length();
                if (!hashSet.add(intOrNull)) {
                    throw new SAXException("Duplicate translation span");
                }
            }

            @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
            public void characters(char[] ch, int offset, int length) {
                sb.append(ch, offset, (length + offset) - offset);
            }

            @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
            public void endElement(String uri, String localName, String qName) {
                Integer num = this.active;
                if (num != null && this.depth == this.activeDepth) {
                    FormattedTranslation.Segment segment = part.getSegments().get(num.intValue());
                    if (segment.getProtected()) {
                        sb.setLength(this.start);
                        sb.append(segment.getText());
                    }
                    Iterator<Integer> it = segment.getEntities().iterator();
                    while (it.hasNext()) {
                        arrayList.add(new FormattedTranslation.Range(it.next().intValue(), this.start, sb.length()));
                    }
                    this.active = null;
                }
                this.depth--;
            }
        };
        int i = 0;
        Html.fromHtml("<translation-root>" + html + "</translation-root>", 0, null, new Html.TagHandler() { // from class: com.exteragram.messenger.translator.FormattedTranslation$$ExternalSyntheticLambda9
            @Override // android.text.Html.TagHandler
            public final void handleTag(boolean z, String str, Editable editable, XMLReader xMLReader) {
                FormattedTranslation.$r8$lambda$8T63C9LJuiNySdMnf4q6B6WXJXU(r2, z, str, editable, xMLReader);
            }
        });
        if (r2.getActive() != null || hashSet.size() != part.getSegments().size()) {
            f$$ExternalSyntheticBUOutline1.m215m("Failed requirement.");
            return null;
        }
        if (part.getHtml().length() != 0 && StringsKt.isBlank(sb)) {
            f$$ExternalSyntheticBUOutline1.m215m("Failed requirement.");
            return null;
        }
        while (i < sb.length() && CharsKt.isWhitespace(sb.charAt(i))) {
            i++;
        }
        int length = sb.length();
        while (length > i && CharsKt.isWhitespace(sb.charAt(length - 1))) {
            length--;
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(part.getLeading().getRanges());
        for (Range range : arrayList) {
            int iCoerceIn = (RangesKt.coerceIn(range.getStart(), i, length) - i) + part.getLeading().getText().length();
            int iCoerceIn2 = (RangesKt.coerceIn(range.getEnd(), i, length) - i) + part.getLeading().getText().length();
            if (iCoerceIn < iCoerceIn2) {
                arrayList2.add(new Range(range.getEntity(), iCoerceIn, iCoerceIn2));
            }
        }
        int length2 = (part.getLeading().getText().length() + length) - i;
        for (Range range2 : part.getTrailing().getRanges()) {
            arrayList2.add(new Range(range2.getEntity(), range2.getStart() + length2, range2.getEnd() + length2));
        }
        return new Decoded(part.getLeading().getText() + sb.substring(i, length) + part.getTrailing().getText(), arrayList2);
    }

    public static void $r8$lambda$8T63C9LJuiNySdMnf4q6B6WXJXU(FormattedTranslation$decode$handler$1 formattedTranslation$decode$handler$1, boolean z, String str, Editable editable, XMLReader xMLReader) {
        if (z && Intrinsics.areEqual(str, "translation-root")) {
            xMLReader.setContentHandler(formattedTranslation$decode$handler$1);
        }
    }

    private final TLRPC.MessageEntity copyEntity(TLRPC.MessageEntity source, int start, int end) {
        SerializedData serializedData = new SerializedData();
        try {
            source.serializeToStream(serializedData);
            SerializedData serializedData2 = new SerializedData(serializedData.toByteArray());
            try {
                TLRPC.MessageEntity messageEntityTLdeserialize = TLRPC.MessageEntity.TLdeserialize(serializedData2, serializedData2.readInt32(true), true);
                messageEntityTLdeserialize.offset = start;
                messageEntityTLdeserialize.length = end - start;
                if ((messageEntityTLdeserialize instanceof TLRPC.TL_messageEntityCustomEmoji) && (source instanceof TLRPC.TL_messageEntityCustomEmoji)) {
                    ((TLRPC.TL_messageEntityCustomEmoji) messageEntityTLdeserialize).document = ((TLRPC.TL_messageEntityCustomEmoji) source).document;
                }
                return messageEntityTLdeserialize;
            } finally {
                serializedData2.cleanup();
            }
        } finally {
            serializedData.cleanup();
        }
    }
}
