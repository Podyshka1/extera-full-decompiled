package com.exteragram.messenger.plugins.analyzer;

import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.analyzer.AnalyzerReport;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONObject;
import org.telegram.messenger.NotificationBadge;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\r\u0018\u0000 ,2\u00020\u0001:\u0006'()*+,Bc\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000b0\n\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e0\n\u0012\u0006\u0010\u000f\u001a\u00020\u0010¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\u00032\u0006\u0010!\u001a\u00020\u0003J\u000e\u0010#\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0005J\u0014\u0010%\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00072\u0006\u0010&\u001a\u00020\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0018R\u001d\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e0\n¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001aR\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001e¨\u0006-"}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport;", _UrlKt.FRAGMENT_ENCODE_SET, "version", _UrlKt.FRAGMENT_ENCODE_SET, "maxSeverity", _UrlKt.FRAGMENT_ENCODE_SET, "statements", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Statement;", "findings", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Finding;", "limits", "artifacts", "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Artifact;", "elapsedMs", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;ILjava/util/List;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;J)V", "getVersion", "()Ljava/lang/String;", "getMaxSeverity", "()I", "getStatements", "()Ljava/util/List;", "getFindings", "()Ljava/util/Map;", "getLimits", "getArtifacts", "getElapsedMs", "()J", "isRoot", _UrlKt.FRAGMENT_ENCODE_SET, "artifact", "kindOf", NotificationBadge.NewHtcHomeBadger.COUNT, "severity", "findingsOf", "statement", "Artifact", "Statement", "Finding", "Evidence", "Payload", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAnalyzerReport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnalyzerReport.kt\ncom/exteragram/messenger/plugins/analyzer/AnalyzerReport\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,242:1\n1834#2,4:243\n1642#2,10:247\n1915#2:257\n1916#2:259\n1652#2:260\n1080#2:261\n1#3:258\n*S KotlinDebug\n*F\n+ 1 AnalyzerReport.kt\ncom/exteragram/messenger/plugins/analyzer/AnalyzerReport\n*L\n74#1:243,4\n77#1:247,10\n77#1:257\n77#1:259\n77#1:260\n77#1:261\n77#1:258\n*E\n"})
public final class AnalyzerReport {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String ROOT_ARTIFACT = "0";
    public static final int SEVERITY_CAUTION = 1;
    public static final int SEVERITY_CRITICAL = 3;
    public static final int SEVERITY_DANGER = 2;
    public static final int SEVERITY_INFO = 0;
    public static final int SEVERITY_NONE = -1;
    private final Map<String, Artifact> artifacts;
    private final long elapsedMs;
    private final Map<String, Finding> findings;
    private final List<String> limits;
    private final int maxSeverity;
    private final List<Statement> statements;
    private final String version;

    public AnalyzerReport(String str, int i, List<Statement> list, Map<String, Finding> map, List<String> list2, Map<String, Artifact> map2, long j) {
        this.version = str;
        this.maxSeverity = i;
        this.statements = list;
        this.findings = map;
        this.limits = list2;
        this.artifacts = map2;
        this.elapsedMs = j;
    }

    public final String getVersion() {
        return this.version;
    }

    public final int getMaxSeverity() {
        return this.maxSeverity;
    }

    public final List<Statement> getStatements() {
        return this.statements;
    }

    public final Map<String, Finding> getFindings() {
        return this.findings;
    }

    public final List<String> getLimits() {
        return this.limits;
    }

    public final Map<String, Artifact> getArtifacts() {
        return this.artifacts;
    }

    public final long getElapsedMs() {
        return this.elapsedMs;
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\n"}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Artifact;", _UrlKt.FRAGMENT_ENCODE_SET, "name", _UrlKt.FRAGMENT_ENCODE_SET, "kind", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getKind", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Artifact {
        private final String kind;
        private final String name;

        public Artifact(String str, String str2) {
            this.name = str;
            this.kind = str2;
        }

        public final String getName() {
            return this.name;
        }

        public final String getKind() {
            return this.kind;
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u000e\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\b\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\b¢\u0006\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Statement;", _UrlKt.FRAGMENT_ENCODE_SET, "id", _UrlKt.FRAGMENT_ENCODE_SET, "severity", _UrlKt.FRAGMENT_ENCODE_SET, "title", "values", _UrlKt.FRAGMENT_ENCODE_SET, "rules", "capabilities", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getId", "()Ljava/lang/String;", "getSeverity", "()I", "getTitle", "getValues", "()Ljava/util/List;", "getRules", "getCapabilities", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Statement {
        private final List<String> capabilities;
        private final String id;
        private final List<String> rules;
        private final int severity;
        private final String title;
        private final List<String> values;

        public Statement(String str, int i, String str2, List<String> list, List<String> list2, List<String> list3) {
            this.id = str;
            this.severity = i;
            this.title = str2;
            this.values = list;
            this.rules = list2;
            this.capabilities = list3;
        }

        public final String getId() {
            return this.id;
        }

        public final int getSeverity() {
            return this.severity;
        }

        public final String getTitle() {
            return this.title;
        }

        public final List<String> getValues() {
            return this.values;
        }

        public final List<String> getRules() {
            return this.rules;
        }

        public final List<String> getCapabilities() {
            return this.capabilities;
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\b\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\b\u0012\u0006\u0010\f\u001a\u00020\u0005¢\u0006\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0010R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015R\u0011\u0010\f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012¨\u0006\u0019"}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Finding;", _UrlKt.FRAGMENT_ENCODE_SET, "rule", _UrlKt.FRAGMENT_ENCODE_SET, "severity", _UrlKt.FRAGMENT_ENCODE_SET, "title", "values", _UrlKt.FRAGMENT_ENCODE_SET, "capabilities", "evidence", "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Evidence;", "evidenceTotal", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V", "getRule", "()Ljava/lang/String;", "getSeverity", "()I", "getTitle", "getValues", "()Ljava/util/List;", "getCapabilities", "getEvidence", "getEvidenceTotal", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Finding {
        private final List<String> capabilities;
        private final List<Evidence> evidence;
        private final int evidenceTotal;
        private final String rule;
        private final int severity;
        private final String title;
        private final List<String> values;

        public Finding(String str, int i, String str2, List<String> list, List<String> list2, List<Evidence> list3, int i2) {
            this.rule = str;
            this.severity = i;
            this.title = str2;
            this.values = list;
            this.capabilities = list2;
            this.evidence = list3;
            this.evidenceTotal = i2;
        }

        public final String getRule() {
            return this.rule;
        }

        public final int getSeverity() {
            return this.severity;
        }

        public final String getTitle() {
            return this.title;
        }

        public final List<String> getValues() {
            return this.values;
        }

        public final List<String> getCapabilities() {
            return this.capabilities;
        }

        public final List<Evidence> getEvidence() {
            return this.evidence;
        }

        public final int getEvidenceTotal() {
            return this.evidenceTotal;
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\n\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00030\n¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0012R\u0011\u0010\f\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0014R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Evidence;", _UrlKt.FRAGMENT_ENCODE_SET, "artifact", _UrlKt.FRAGMENT_ENCODE_SET, "line", _UrlKt.FRAGMENT_ENCODE_SET, "excerpt", "scope", "instruction", "traits", _UrlKt.FRAGMENT_ENCODE_SET, "symbol", "endLine", "payload", "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Payload;", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILcom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Payload;)V", "getArtifact", "()Ljava/lang/String;", "getLine", "()I", "getExcerpt", "getScope", "getInstruction", "getTraits", "()Ljava/util/List;", "getSymbol", "getEndLine", "getPayload", "()Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Payload;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Evidence {
        private final String artifact;
        private final int endLine;
        private final String excerpt;
        private final String instruction;
        private final int line;
        private final Payload payload;
        private final String scope;
        private final String symbol;
        private final List<String> traits;

        public Evidence(String str, int i, String str2, String str3, String str4, List<String> list, String str5, int i2, Payload payload) {
            this.artifact = str;
            this.line = i;
            this.excerpt = str2;
            this.scope = str3;
            this.instruction = str4;
            this.traits = list;
            this.symbol = str5;
            this.endLine = i2;
            this.payload = payload;
        }

        public final String getArtifact() {
            return this.artifact;
        }

        public final int getLine() {
            return this.line;
        }

        public final String getExcerpt() {
            return this.excerpt;
        }

        public final String getScope() {
            return this.scope;
        }

        public final String getInstruction() {
            return this.instruction;
        }

        public final List<String> getTraits() {
            return this.traits;
        }

        public final String getSymbol() {
            return this.symbol;
        }

        public final int getEndLine() {
            return this.endLine;
        }

        public final Payload getPayload() {
            return this.payload;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\n\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014¨\u0006\u0016"}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Payload;", _UrlKt.FRAGMENT_ENCODE_SET, "kind", _UrlKt.FRAGMENT_ENCODE_SET, "size", _UrlKt.FRAGMENT_ENCODE_SET, "transforms", _UrlKt.FRAGMENT_ENCODE_SET, "inComment", _UrlKt.FRAGMENT_ENCODE_SET, "dataLine", "<init>", "(Ljava/lang/String;JLjava/util/List;ZZ)V", "getKind", "()Ljava/lang/String;", "getSize", "()J", "getTransforms", "()Ljava/util/List;", "getInComment", "()Z", "getDataLine", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Payload {
        private final boolean dataLine;
        private final boolean inComment;
        private final String kind;
        private final long size;
        private final List<String> transforms;

        public Payload(String str, long j, List<String> list, boolean z, boolean z2) {
            this.kind = str;
            this.size = j;
            this.transforms = list;
            this.inComment = z;
            this.dataLine = z2;
        }

        public final String getKind() {
            return this.kind;
        }

        public final long getSize() {
            return this.size;
        }

        public final List<String> getTransforms() {
            return this.transforms;
        }

        public final boolean getInComment() {
            return this.inComment;
        }

        public final boolean getDataLine() {
            return this.dataLine;
        }
    }

    public final boolean isRoot(String artifact) {
        return Intrinsics.areEqual(artifact, "0");
    }

    public final String kindOf(String artifact) {
        Artifact artifact2 = this.artifacts.get(artifact);
        if (artifact2 != null) {
            return artifact2.getKind();
        }
        return null;
    }

    public final int count(int severity) {
        List<Statement> list = this.statements;
        int i = 0;
        if ((list instanceof Collection) && list.isEmpty()) {
            return 0;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (((Statement) it.next()).getSeverity() == severity && (i = i + 1) < 0) {
                CollectionsKt.throwCountOverflow();
            }
        }
        return i;
    }

    public final List<Finding> findingsOf(Statement statement) {
        List<String> rules = statement.getRules();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = rules.iterator();
        while (it.hasNext()) {
            Finding finding = this.findings.get((String) it.next());
            if (finding != null) {
                arrayList.add(finding);
            }
        }
        return CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.exteragram.messenger.plugins.analyzer.AnalyzerReport$findingsOf$$inlined$sortedByDescending$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Integer.valueOf(((AnalyzerReport.Finding) t2).getSeverity()), Integer.valueOf(((AnalyzerReport.Finding) t).getSeverity()));
            }
        });
    }

    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\f\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000bJ0\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00170\u0016H\u0002J\u0015\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001aH\u0000¢\u0006\u0002\b\u001bJ\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u000b2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001aH\u0002J\u0015\u0010 \u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u001aH\u0000¢\u0006\u0002\b!R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "SEVERITY_NONE", _UrlKt.FRAGMENT_ENCODE_SET, "SEVERITY_INFO", "SEVERITY_CAUTION", "SEVERITY_DANGER", "SEVERITY_CRITICAL", "ROOT_ARTIFACT", _UrlKt.FRAGMENT_ENCODE_SET, "severityOf", "label", "parse", "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport;", "json", "withoutSecondaryDuplicates", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Statement;", "statements", "findings", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Finding;", "parseStatement", PluginsConstants.Settings.ITEM, "Lorg/json/JSONObject;", "parseStatement$TMessagesProj", "parsePayload", "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Payload;", "symbol", "detail", "parseFinding", "parseFinding$TMessagesProj", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nAnalyzerReport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnalyzerReport.kt\ncom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Companion\n+ 2 AnalyzerReport.kt\ncom/exteragram/messenger/plugins/analyzer/AnalyzerReportKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,242:1\n228#2,7:243\n228#2,7:250\n228#2,7:257\n228#2,7:296\n1033#3,2:264\n1220#3,2:266\n1249#3,4:268\n1642#3,10:272\n1915#3:282\n777#3:283\n873#3:284\n874#3:286\n1786#3,3:287\n1916#3:291\n1652#3:292\n777#3:293\n873#3,2:294\n1#4:285\n1#4:290\n*S KotlinDebug\n*F\n+ 1 AnalyzerReport.kt\ncom/exteragram/messenger/plugins/analyzer/AnalyzerReport$Companion\n*L\n99#1:243,7\n104#1:250,7\n108#1:257,7\n178#1:296,7\n109#1:264,2\n122#1:266,2\n122#1:268,4\n123#1:272,10\n123#1:282\n125#1:283\n125#1:284\n125#1:286\n138#1:287,3\n123#1:291\n123#1:292\n159#1:293\n159#1:294,2\n123#1:290\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public final int severityOf(String label) {
            if (label == null) {
                return -1;
            }
            switch (label.hashCode()) {
                case -1339091421:
                    return !label.equals("danger") ? -1 : 2;
                case 3237038:
                    return label.equals("info") ? 0 : -1;
                case 557191019:
                    return !label.equals("caution") ? -1 : 1;
                case 1952151455:
                    return !label.equals("critical") ? -1 : 3;
                default:
                    return -1;
            }
        }

        public final AnalyzerReport parse(String json) {
            JSONObject jSONObject = new JSONObject(json);
            Map<String, Finding> linkedHashMap = new LinkedHashMap<>();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("findings");
            if (jSONArrayOptJSONArray != null) {
                int length = jSONArrayOptJSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject != null) {
                        Finding finding$TMessagesProj = AnalyzerReport.INSTANCE.parseFinding$TMessagesProj(jSONObjectOptJSONObject);
                        linkedHashMap.put(finding$TMessagesProj.getRule(), finding$TMessagesProj);
                    }
                }
            }
            HashMap map = new HashMap();
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("artifacts");
            if (jSONArrayOptJSONArray2 != null) {
                int length2 = jSONArrayOptJSONArray2.length();
                for (int i2 = 0; i2 < length2; i2++) {
                    JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray2.optJSONObject(i2);
                    if (jSONObjectOptJSONObject2 != null) {
                        map.put(jSONObjectOptJSONObject2.optString("id"), new Artifact(jSONObjectOptJSONObject2.optString("name"), jSONObjectOptJSONObject2.optString("kind")));
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("statements");
            if (jSONArrayOptJSONArray3 != null) {
                int length3 = jSONArrayOptJSONArray3.length();
                for (int i3 = 0; i3 < length3; i3++) {
                    JSONObject jSONObjectOptJSONObject3 = jSONArrayOptJSONArray3.optJSONObject(i3);
                    if (jSONObjectOptJSONObject3 != null) {
                        arrayList.add(AnalyzerReport.INSTANCE.parseStatement$TMessagesProj(jSONObjectOptJSONObject3));
                    }
                }
            }
            if (arrayList.size() > 1) {
                CollectionsKt.sortWith(arrayList, new Comparator() { // from class: com.exteragram.messenger.plugins.analyzer.AnalyzerReport$Companion$parse$$inlined$sortByDescending$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return ComparisonsKt.compareValues(Integer.valueOf(((AnalyzerReport.Statement) t2).getSeverity()), Integer.valueOf(((AnalyzerReport.Statement) t).getSeverity()));
                    }
                });
            }
            JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("analyzer");
            String strOptString = jSONObjectOptJSONObject4 != null ? jSONObjectOptJSONObject4.optString("version") : null;
            if (strOptString == null) {
                strOptString = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            int iSeverityOf = severityOf(jSONObject.optString("max_severity"));
            List<Statement> listWithoutSecondaryDuplicates = withoutSecondaryDuplicates(arrayList, linkedHashMap);
            List listStrings = AnalyzerReportKt.strings(jSONObject.optJSONArray("limits"));
            JSONObject jSONObjectOptJSONObject5 = jSONObject.optJSONObject("stats");
            return new AnalyzerReport(strOptString, iSeverityOf, listWithoutSecondaryDuplicates, linkedHashMap, listStrings, map, jSONObjectOptJSONObject5 != null ? jSONObjectOptJSONObject5.optLong("elapsed_ms", 0L) : 0L);
        }

        private final List<Statement> withoutSecondaryDuplicates(List<Statement> statements, Map<String, Finding> findings) {
            List<Statement> list = statements;
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(list, 10)), 16));
            for (Object obj : list) {
                linkedHashMap.put(((Statement) obj).getId(), obj);
            }
            ArrayList arrayList = new ArrayList();
            for (Statement statement : list) {
                ArrayList arrayList2 = new ArrayList();
                List<String> rules = statement.getRules();
                ArrayList arrayList3 = new ArrayList();
                Iterator<T> it = rules.iterator();
                while (true) {
                    Statement statement2 = null;
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    Finding finding = findings.get((String) next);
                    List<String> capabilities = finding != null ? finding.getCapabilities() : null;
                    if (capabilities == null) {
                        capabilities = CollectionsKt.emptyList();
                    }
                    String str = (String) CollectionsKt.firstOrNull((List) capabilities);
                    if (str != null) {
                        if (Intrinsics.areEqual(str, statement.getId())) {
                            str = null;
                        }
                        if (str != null) {
                            statement2 = (Statement) linkedHashMap.get(str);
                        }
                    }
                    if (statement2 != null && capabilities.contains(statement.getId())) {
                        arrayList2.add(statement2);
                    } else {
                        arrayList3.add(next);
                    }
                }
                if (arrayList3.size() != statement.getRules().size()) {
                    if (!arrayList3.isEmpty()) {
                        statement = new Statement(statement.getId(), statement.getSeverity(), statement.getTitle(), statement.getValues(), arrayList3, statement.getCapabilities());
                    } else if (arrayList2.isEmpty()) {
                        statement = null;
                    } else {
                        int size = arrayList2.size();
                        int i = 0;
                        while (i < size) {
                            Object obj2 = arrayList2.get(i);
                            i++;
                            if (((Statement) obj2).getSeverity() < statement.getSeverity()) {
                                break;
                            }
                        }
                        statement = null;
                    }
                }
                if (statement != null) {
                    arrayList.add(statement);
                }
            }
            return arrayList;
        }

        public final Statement parseStatement$TMessagesProj(JSONObject item) {
            return new Statement(item.optString("id"), severityOf(item.optString("severity")), item.optString("title"), AnalyzerReportKt.strings(item.optJSONArray("values")), AnalyzerReportKt.strings(item.optJSONArray("rules")), AnalyzerReportKt.strings(item.optJSONArray("capabilities")));
        }

        private final Payload parsePayload(String symbol, JSONObject detail) {
            if (detail == null) {
                return null;
            }
            if (StringsKt.startsWith$default(symbol, "artifact:", false, 2, (Object) null)) {
                String strSubstringAfter$default = StringsKt.substringAfter$default(symbol, ':', (String) null, 2, (Object) null);
                long jOptLong = detail.optLong("size", 0L);
                List listStrings = AnalyzerReportKt.strings(detail.optJSONArray("transforms"));
                ArrayList arrayList = new ArrayList();
                for (Object obj : listStrings) {
                    if (!Intrinsics.areEqual((String) obj, "comment")) {
                        arrayList.add(obj);
                    }
                }
                return new Payload(strSubstringAfter$default, jOptLong, arrayList, Intrinsics.areEqual(detail.optString("via"), "comment"), SetsKt.setOf((Object[]) new String[]{"comment", "auto-unwrap"}).contains(detail.optString("via")));
            }
            if (StringsKt.startsWith$default(symbol, "data:opaque", false, 2, (Object) null)) {
                return new Payload(_UrlKt.FRAGMENT_ENCODE_SET, detail.optLong("length", 0L), CollectionsKt.emptyList(), Intrinsics.areEqual(symbol, "data:opaque-comment"), true);
            }
            return null;
        }

        public final Finding parseFinding$TMessagesProj(JSONObject item) {
            String strOptString;
            String strOptString2;
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArrayOptJSONArray = item.optJSONArray("evidence");
            if (jSONArrayOptJSONArray != null) {
                int length = jSONArrayOptJSONArray.length();
                for (int i = 0; i < length; i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject != null) {
                        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("location");
                        String strOptString3 = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optString("artifact") : null;
                        if (strOptString3 == null) {
                            strOptString3 = _UrlKt.FRAGMENT_ENCODE_SET;
                        }
                        String str = strOptString3;
                        int iOptInt = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optInt("line", 0) : 0;
                        String strOptString4 = jSONObjectOptJSONObject.optString("excerpt");
                        String str2 = strOptString4.length() > 0 ? strOptString4 : null;
                        String str3 = (jSONObjectOptJSONObject2 == null || (strOptString2 = jSONObjectOptJSONObject2.optString("scope")) == null || strOptString2.length() <= 0) ? null : strOptString2;
                        JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject.optJSONObject("detail");
                        arrayList.add(new Evidence(str, iOptInt, str2, str3, (jSONObjectOptJSONObject3 == null || (strOptString = jSONObjectOptJSONObject3.optString("insn")) == null || strOptString.length() <= 0) ? null : strOptString, AnalyzerReportKt.strings(jSONObjectOptJSONObject.optJSONArray("traits")), jSONObjectOptJSONObject.optString("symbol"), jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optInt("end_line", 0) : 0, AnalyzerReport.INSTANCE.parsePayload(jSONObjectOptJSONObject.optString("symbol"), jSONObjectOptJSONObject.optJSONObject("detail"))));
                    }
                }
            }
            return new Finding(item.optString("rule"), severityOf(item.optString("severity")), item.optString("title"), AnalyzerReportKt.strings(item.optJSONArray("values")), AnalyzerReportKt.strings(item.optJSONArray("capabilities")), arrayList, item.optInt("evidence_total", arrayList.size()));
        }
    }
}
