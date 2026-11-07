package com.exteragram.messenger.plugins.ui.components;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import com.android.dx.io.Opcodes;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.analyzer.AnalysisCatalog;
import com.exteragram.messenger.plugins.analyzer.AnalyzerDiff;
import com.exteragram.messenger.plugins.analyzer.AnalyzerReport;
import com.exteragram.messenger.plugins.analyzer.PluginAnalyzer;
import com.exteragram.messenger.plugins.ui.components.AnalysisSummary;
import com.exteragram.messenger.plugins.ui.components.AnalysisSummaryCell;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.NotificationBadge;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.UItem;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 82\u00020\u0001:\u00018B-\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\tJ\u0006\u0010\u001a\u001a\u00020\u0006J\u000e\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001dJ\u001e\u0010\u001e\u001a\u00020\u00062\u0016\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020!0 j\b\u0012\u0004\u0012\u00020!`\"J(\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)2\u000e\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005J\u0010\u0010+\u001a\u00020\r2\u0006\u0010,\u001a\u00020\rH\u0002J\b\u0010-\u001a\u00020\u0013H\u0002J\u0010\u0010.\u001a\u00020\u00132\u0006\u0010/\u001a\u00020\rH\u0002J\u0010\u00100\u001a\u00020\u00132\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0017\u00101\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002¢\u0006\u0002\u00102J \u00103\u001a\u00020\u00062\u0006\u00104\u001a\u0002052\u0006\u0010,\u001a\u0002062\u0006\u00107\u001a\u00020\rH\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0014\u001a\u00020\r8F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0019R\u0011\u0010#\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\b$\u0010\u0019¨\u00069"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/PluginAnalysisSection;", _UrlKt.FRAGMENT_ENCODE_SET, "resourcesProvider", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "onChanged", "Lkotlin/Function0;", _UrlKt.FRAGMENT_ENCODE_SET, "onOpenReport", "<init>", "(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "summaryClick", "Landroid/view/View$OnClickListener;", "state", _UrlKt.FRAGMENT_ENCODE_SET, "report", "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport;", "diff", "Lcom/exteragram/messenger/plugins/analyzer/AnalyzerDiff;", "summary", "Lcom/exteragram/messenger/plugins/ui/components/AnalysisSummary;", "maxSeverity", "getMaxSeverity", "()I", "isVisible", _UrlKt.FRAGMENT_ENCODE_SET, "()Z", "setDisabled", "setResult", "result", "Lcom/exteragram/messenger/plugins/analyzer/PluginAnalyzer$Result;", "fill", PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "Lkotlin/collections/ArrayList;", "hasReport", "getHasReport", "openReport", "fragment", "Lorg/telegram/ui/ActionBar/BaseFragment;", "confirmTitle", _UrlKt.FRAGMENT_ENCODE_SET, "onConfirm", "color", PluginsConstants.Settings.KEY, "runningSummary", "failureSummary", "status", "reportSummary", "newCount", "(Lcom/exteragram/messenger/plugins/analyzer/AnalyzerReport;)Ljava/lang/Integer;", "appendCount", "builder", "Landroid/text/SpannableStringBuilder;", _UrlKt.FRAGMENT_ENCODE_SET, NotificationBadge.NewHtcHomeBadger.COUNT, "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPluginAnalysisSection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginAnalysisSection.kt\ncom/exteragram/messenger/plugins/ui/components/PluginAnalysisSection\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,201:1\n1#2:202\n1586#3:203\n1661#3,3:204\n1661#3,3:207\n1834#3,4:210\n*S KotlinDebug\n*F\n+ 1 PluginAnalysisSection.kt\ncom/exteragram/messenger/plugins/ui/components/PluginAnalysisSection\n*L\n141#1:203\n141#1:204,3\n166#1:207,3\n167#1:210,4\n*E\n"})
public final class PluginAnalysisSection {
    public static final int ID_SUMMARY = 16800;
    private static final String SEPARATOR = " · ";
    private static final int STATE_DISABLED = 4;
    private static final int STATE_FAILED = 2;
    private static final int STATE_REPORT = 1;
    private static final int STATE_RUNNING = 0;
    private static final int STATE_UNAVAILABLE = 3;
    private AnalyzerDiff diff;
    private final Function0<Unit> onChanged;
    private final Function0<Unit> onOpenReport;
    private AnalyzerReport report;
    private final Theme.ResourcesProvider resourcesProvider;
    private int state;
    private final View.OnClickListener summaryClick = new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.PluginAnalysisSection$$ExternalSyntheticLambda0
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f$0.onOpenReport.invoke();
        }
    };
    private AnalysisSummary summary = runningSummary();

    public PluginAnalysisSection(Theme.ResourcesProvider resourcesProvider, Function0<Unit> function0, Function0<Unit> function02) {
        this.resourcesProvider = resourcesProvider;
        this.onChanged = function0;
        this.onOpenReport = function02;
    }

    public final int getMaxSeverity() {
        AnalyzerReport analyzerReport;
        if (this.state != 1 || (analyzerReport = this.report) == null) {
            return -1;
        }
        return analyzerReport.getMaxSeverity();
    }

    public final boolean isVisible() {
        int i = this.state;
        return (i == 4 || i == 3) ? false : true;
    }

    public final void setDisabled() {
        this.state = 4;
        this.onChanged.invoke();
    }

    public final void setResult(PluginAnalyzer.Result result) {
        AnalyzerReport report = result.getReport();
        if (result.getStatus() == 0 && report != null) {
            this.state = 1;
            this.report = report;
            AnalyzerDiff diff = result.getDiff();
            if (diff == null || diff.isEmpty()) {
                diff = null;
            }
            this.diff = diff;
            this.summary = reportSummary(report);
        } else if (result.getStatus() == 1) {
            this.state = 3;
        } else {
            this.state = 2;
            this.summary = failureSummary(result.getStatus());
        }
        this.onChanged.invoke();
    }

    public final void fill(ArrayList<UItem> items) {
        if (isVisible()) {
            items.add(AnalysisSummaryCell.Factory.INSTANCE.of(ID_SUMMARY, this.summary, getHasReport() ? this.summaryClick : null));
        }
    }

    public final boolean getHasReport() {
        AnalyzerReport analyzerReport = this.report;
        return (analyzerReport == null || this.state != 1 || (analyzerReport.getStatements().isEmpty() && analyzerReport.getLimits().isEmpty())) ? false : true;
    }

    public final void openReport(BaseFragment fragment, CharSequence confirmTitle, Function0<Unit> onConfirm) {
        AnalyzerReport analyzerReport = this.report;
        if (analyzerReport == null) {
            return;
        }
        new PluginAnalysisReportSheet(fragment, analyzerReport, this.diff, confirmTitle, onConfirm).show();
    }

    private final int color(int key) {
        return Theme.getColor(key, this.resourcesProvider);
    }

    private final AnalysisSummary runningSummary() {
        return new AnalysisSummary(0, color(Theme.key_featuredStickers_addButton), LocaleController.getString(C2807R.string.PluginAnalysisRunning), LocaleController.getString(C2807R.string.PluginAnalysisRunningInfo), null, true, null, 0, Opcodes.ADD_INT_LIT16, null);
    }

    private final AnalysisSummary failureSummary(int status) {
        int i;
        int i2 = C2807R.drawable.plugin_analysis_warning;
        int iAnalysisSeverityColor = PluginAnalysisCellsKt.analysisSeverityColor(2, this.resourcesProvider);
        String string = LocaleController.getString(C2807R.string.PluginAnalysisFailed);
        if (status == 3) {
            i = C2807R.string.PluginAnalysisFailedTimeout;
        } else if (status == 4) {
            i = C2807R.string.PluginAnalysisFailedCrash;
        } else if (status == 5) {
            i = C2807R.string.PluginAnalysisFailedTooLarge;
        } else if (status == 6) {
            i = C2807R.string.PluginAnalysisFailedMemory;
        } else {
            i = C2807R.string.PluginAnalysisFailedError;
        }
        return new AnalysisSummary(i2, iAnalysisSeverityColor, string, LocaleController.getString(i), null, false, null, 0, 240, null);
    }

    private final AnalysisSummary reportSummary(AnalyzerReport report) {
        int i;
        int iAnalysisSafeColor;
        int maxSeverity = report.getMaxSeverity();
        boolean z = maxSeverity >= 2;
        boolean z2 = maxSeverity == 1;
        if (z) {
            i = C2807R.string.PluginAnalysisThreats;
        } else if (z2) {
            i = C2807R.string.PluginAnalysisCaution;
        } else {
            i = C2807R.string.PluginAnalysisClean;
        }
        String string = LocaleController.getString(i);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (z) {
            appendCount(spannableStringBuilder, "PluginAnalysisCriticalCount", report.count(3));
            appendCount(spannableStringBuilder, "PluginAnalysisDangerCount", report.count(2));
        } else {
            spannableStringBuilder.append((CharSequence) LocaleController.getString(z2 ? C2807R.string.PluginAnalysisCautionInfo : C2807R.string.PluginAnalysisCleanInfo));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (AnalyzerReport.Statement statement : report.getStatements()) {
            AnalysisCatalog.Category category = AnalysisCatalog.INSTANCE.category(statement);
            Integer num = (Integer) linkedHashMap.get(category);
            linkedHashMap.put(category, Integer.valueOf(Math.max(num != null ? num.intValue() : -1, statement.getSeverity())));
        }
        Set setEntrySet = linkedHashMap.entrySet();
        final Comparator comparator = new Comparator() { // from class: com.exteragram.messenger.plugins.ui.components.PluginAnalysisSection$reportSummary$lambda$5$$inlined$compareByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues((Comparable) ((Map.Entry) t2).getValue(), (Comparable) ((Map.Entry) t).getValue());
            }
        };
        List<Map.Entry> listSortedWith = CollectionsKt.sortedWith(setEntrySet, new Comparator() { // from class: com.exteragram.messenger.plugins.ui.components.PluginAnalysisSection$reportSummary$lambda$5$$inlined$thenBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int iCompare = comparator.compare(t, t2);
                return iCompare != 0 ? iCompare : ComparisonsKt.compareValues(Integer.valueOf(((AnalysisCatalog.Category) ((Map.Entry) t).getKey()).ordinal()), Integer.valueOf(((AnalysisCatalog.Category) ((Map.Entry) t2).getKey()).ordinal()));
            }
        });
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listSortedWith, 10));
        for (Map.Entry entry : listSortedWith) {
            AnalysisCatalog.Category category2 = (AnalysisCatalog.Category) entry.getKey();
            arrayList.add(new AnalysisSummary.Chip(category2.getIconRes(), LocaleController.getString(category2.getTitleRes()), PluginAnalysisCellsKt.analysisSeverityColor(((Integer) entry.getValue()).intValue(), this.resourcesProvider)));
        }
        int i2 = maxSeverity >= 1 ? C2807R.drawable.plugin_analysis_warning : C2807R.drawable.plugin_analysis_shield;
        Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
        if (maxSeverity >= 1) {
            iAnalysisSafeColor = PluginAnalysisCellsKt.analysisSeverityColor(maxSeverity, resourcesProvider);
        } else {
            iAnalysisSafeColor = PluginAnalysisCellsKt.analysisSafeColor(resourcesProvider);
        }
        int i3 = iAnalysisSafeColor;
        Integer numNewCount = newCount(report);
        return new AnalysisSummary(i2, i3, string, spannableStringBuilder, arrayList, false, numNewCount != null ? LocaleController.formatPluralString("PluginAnalysisNewBadge", numNewCount.intValue(), new Object[0]) : null, color(Theme.key_featuredStickers_addButton), 32, null);
    }

    private final Integer newCount(AnalyzerReport report) {
        List<AnalyzerReport.Statement> newStatements;
        AnalyzerDiff analyzerDiff = this.diff;
        if (analyzerDiff != null && (newStatements = analyzerDiff.getNewStatements()) != null) {
            HashSet hashSet = new HashSet();
            Iterator<T> it = newStatements.iterator();
            while (it.hasNext()) {
                hashSet.add(((AnalyzerReport.Statement) it.next()).getId());
            }
            List<AnalyzerReport.Statement> statements = report.getStatements();
            int i = 0;
            if (!(statements instanceof Collection) || !statements.isEmpty()) {
                Iterator<T> it2 = statements.iterator();
                while (it2.hasNext()) {
                    if (hashSet.contains(((AnalyzerReport.Statement) it2.next()).getId()) && (i = i + 1) < 0) {
                        CollectionsKt.throwCountOverflow();
                    }
                }
            }
            Integer numValueOf = Integer.valueOf(i);
            if (numValueOf.intValue() > 0) {
                return numValueOf;
            }
        }
        return null;
    }

    private final void appendCount(SpannableStringBuilder builder, String key, int count) {
        if (count <= 0) {
            return;
        }
        if (builder.length() > 0) {
            builder.append(SEPARATOR);
        }
        String pluralString = LocaleController.formatPluralString(key, count, new Object[0]);
        int length = builder.length();
        builder.append((CharSequence) pluralString);
        String strValueOf = String.valueOf(count);
        if (StringsKt.startsWith$default(pluralString, strValueOf, false, 2, (Object) null)) {
            builder.setSpan(new ForegroundColorSpan(color(Theme.key_windowBackgroundWhiteBlackText)), length, strValueOf.length() + length, 33);
        }
    }
}
