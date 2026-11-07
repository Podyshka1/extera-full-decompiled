package com.exteragram.messenger.plugins.ui.components;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.plugins.ui.components.AnalysisEvidence;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.math.MathKt;
import kotlin.text.CharsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001:\u0001PB\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020&H\u0014J0\u0010(\u001a\u00020#2\u0006\u0010)\u001a\u00020\u001a2\u0006\u0010*\u001a\u00020&2\u0006\u0010+\u001a\u00020&2\u0006\u0010,\u001a\u00020&2\u0006\u0010-\u001a\u00020&H\u0014J\u0010\u0010.\u001a\u00020#2\u0006\u0010/\u001a\u000200H\u0014J@\u00101\u001a\u00020#2\u0006\u00102\u001a\u00020\u00182\u0006\u00103\u001a\u00020\u001a2\u0006\u00104\u001a\u00020\u001a2\b\u00105\u001a\u0004\u0018\u0001062\u0016\b\u0002\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#\u0018\u00010!J\u0010\u00107\u001a\u00020#2\u0006\u00108\u001a\u00020\u001cH\u0002J\b\u00109\u001a\u00020#H\u0002J\u0010\u0010:\u001a\u00020#2\u0006\u00102\u001a\u00020\u0018H\u0002J\b\u0010;\u001a\u00020\u0014H\u0002J\u0010\u0010<\u001a\n \n*\u0004\u0018\u00010=0=H\u0002J\u001b\u0010>\u001a\u0002H?\"\b\b\u0000\u0010?*\u00020@*\u0002H?H\u0002¢\u0006\u0002\u0010AJ\u0010\u0010B\u001a\u00020\u000f2\u0006\u0010C\u001a\u00020\"H\u0002J\u0018\u0010D\u001a\u00020\u000f2\u0006\u0010C\u001a\u00020\"2\u0006\u0010E\u001a\u00020&H\u0002J#\u0010F\u001a\u0002H?\"\b\b\u0000\u0010?*\u00020@*\u0002H?2\u0006\u0010C\u001a\u00020\"H\u0002¢\u0006\u0002\u0010GJ\u0018\u0010H\u001a\u00020\u00142\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020&H\u0002J\u0010\u0010L\u001a\u00020\"2\u0006\u0010M\u001a\u00020\"H\u0002J\u0010\u0010N\u001a\u00020&2\u0006\u0010O\u001a\u00020&H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n \n*\u0004\u0018\u00010\t0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010 \u001a\u0010\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#\u0018\u00010!X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006Q"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/AnalysisStatementCell;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "resourcesProvider", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "<init>", "(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V", "mono", "Landroid/graphics/Typeface;", "kotlin.jvm.PlatformType", PluginsConstants.Settings.TYPE_HEADER, "icon", "Lcom/exteragram/messenger/plugins/ui/components/TintedIcon;", "titleView", "Landroid/widget/TextView;", "subtitleView", "arrowView", "Landroid/widget/ImageView;", "docsView", "Landroid/widget/LinearLayout;", "boundKey", _UrlKt.FRAGMENT_ENCODE_SET, "boundRow", "Lcom/exteragram/messenger/plugins/ui/components/AnalysisStatementRow;", "expanded", _UrlKt.FRAGMENT_ENCODE_SET, "progress", _UrlKt.FRAGMENT_ENCODE_SET, "animator", "Landroid/animation/ValueAnimator;", "needDivider", "onCopy", "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "onMeasure", "widthMeasureSpec", _UrlKt.FRAGMENT_ENCODE_SET, "heightMeasureSpec", "onLayout", "changed", "left", "top", "right", "bottom", "onDraw", "canvas", "Landroid/graphics/Canvas;", "set", "row", "expand", PluginsConstants.Settings.TYPE_DIVIDER, "onClick", "Landroid/view/View$OnClickListener;", "setProgress", "value", "clearDocs", "buildDocs", "block", "lineParams", "Landroid/widget/LinearLayout$LayoutParams;", "inset", "T", "Landroid/view/View;", "(Landroid/view/View;)Landroid/view/View;", "noteText", "text", "monoText", "colorKey", "copying", "(Landroid/view/View;Ljava/lang/CharSequence;)Landroid/view/View;", "codeLine", "line", "Lcom/exteragram/messenger/plugins/ui/components/AnalysisEvidence$Line;", "gutterWidth", "codeBreaks", "code", "color", PluginsConstants.Settings.KEY, "Factory", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SuppressLint({"ViewConstructor"})
@SourceDebugExtension({"SMAP\nPluginAnalysisCells.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginAnalysisCells.kt\ncom/exteragram/messenger/plugins/ui/components/AnalysisStatementCell\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,768:1\n29#2:769\n85#2,18:770\n1915#3,2:788\n1915#3,2:790\n1512#3:792\n1538#3,3:793\n1541#3,3:803\n1924#3,2:806\n777#3:808\n873#3,2:809\n1926#3:812\n410#4,7:796\n1#5:811\n*S KotlinDebug\n*F\n+ 1 PluginAnalysisCells.kt\ncom/exteragram/messenger/plugins/ui/components/AnalysisStatementCell\n*L\n591#1:769\n591#1:770,18\n623#1:788,2\n626#1:790,2\n636#1:792\n636#1:793,3\n636#1:803,3\n637#1:806,2\n642#1:808\n642#1:809,2\n637#1:812\n636#1:796,7\n*E\n"})
public final class AnalysisStatementCell extends FrameLayout {
    private ValueAnimator animator;
    private final ImageView arrowView;
    private String boundKey;
    private AnalysisStatementRow boundRow;
    private final LinearLayout docsView;
    private boolean expanded;
    private final FrameLayout header;
    private final TintedIcon icon;
    private final Typeface mono;
    private boolean needDivider;
    private Function1<? super CharSequence, Unit> onCopy;
    private float progress;
    private final Theme.ResourcesProvider resourcesProvider;
    private final TextView subtitleView;
    private final TextView titleView;

    public AnalysisStatementCell(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.resourcesProvider = resourcesProvider;
        this.mono = AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MONO);
        FrameLayout frameLayout = new FrameLayout(context);
        this.header = frameLayout;
        TintedIcon tintedIcon = new TintedIcon(context);
        this.icon = tintedIcon;
        TextView textView = new TextView(context);
        this.titleView = textView;
        TextView textView2 = new TextView(context);
        this.subtitleView = textView2;
        ImageView imageViewArrowView = PluginAnalysisCellsKt.arrowView(context, resourcesProvider);
        this.arrowView = imageViewArrowView;
        LinearLayout linearLayout = new LinearLayout(context);
        this.docsView = linearLayout;
        setWillNotDraw(false);
        boolean z = LocaleController.isRTL;
        int i = z ? 5 : 3;
        int i2 = z ? 3 : 5;
        frameLayout.setBackground(Theme.createSelectorDrawable(color(Theme.key_listSelector), 2));
        frameLayout.setMinimumHeight(AndroidUtilities.dp(64.0f));
        frameLayout.addView(tintedIcon.getContainer(), LayoutHelper.createFrame(40, 40.0f, i | 48, 12.0f, 12.0f, 12.0f, 0.0f));
        PluginAnalysisCellsKt.setTextMetrics(textView, 16.0f, 20.0f, AndroidUtilities.bold());
        textView.setTextColor(color(Theme.key_windowBackgroundWhiteBlackText));
        textView.setMaxLines(2);
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        textView.setGravity(i);
        PluginAnalysisCellsKt.setTextMetrics$default(textView2, 13.0f, 17.0f, null, 4, null);
        textView2.setTextColor(color(Theme.key_windowBackgroundWhiteGrayText));
        textView2.setMaxLines(2);
        textView2.setEllipsize(truncateAt);
        textView2.setGravity(i);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        linearLayout2.addView(textView, LayoutHelper.createLinear(-1, -2));
        linearLayout2.addView(textView2, LayoutHelper.createLinear(-1, -2, 0.0f, 4.0f, 0.0f, 0.0f));
        frameLayout.addView(linearLayout2, LayoutHelper.createFrame(-1, -2.0f, i | 16, z ? 57.0f : 64.0f, 12.0f, z ? 64.0f : 57.0f, 12.0f));
        frameLayout.addView(imageViewArrowView, LayoutHelper.createFrame(42, 42.0f, i2 | 48, 11.0f, 11.0f, 11.0f, 0.0f));
        addView(frameLayout);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.dp(12.0f), 0, AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f));
        addView(linearLayout);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        this.header.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(0, 0));
        this.docsView.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(0, 0));
        setMeasuredDimension(size, this.header.getMeasuredHeight() + MathKt.roundToInt(this.docsView.getMeasuredHeight() * this.progress) + (this.needDivider ? 1 : 0));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        FrameLayout frameLayout = this.header;
        frameLayout.layout(0, 0, frameLayout.getMeasuredWidth(), this.header.getMeasuredHeight());
        this.docsView.layout(0, this.header.getMeasuredHeight(), this.docsView.getMeasuredWidth(), this.header.getMeasuredHeight() + this.docsView.getMeasuredHeight());
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Paint paint;
        if (this.needDivider) {
            float fDp = AndroidUtilities.dp(64.0f);
            float measuredHeight = getMeasuredHeight() - 1.0f;
            Theme.ResourcesProvider resourcesProvider = this.resourcesProvider;
            if (resourcesProvider == null || (paint = resourcesProvider.getPaint("paintDivider")) == null) {
                paint = Theme.dividerPaint;
            }
            Paint paint2 = paint;
            if (LocaleController.isRTL) {
                canvas.drawLine(0.0f, measuredHeight, getMeasuredWidth() - fDp, measuredHeight, paint2);
            } else {
                canvas.drawLine(fDp, measuredHeight, getMeasuredWidth(), measuredHeight, paint2);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void set$default(AnalysisStatementCell analysisStatementCell, AnalysisStatementRow analysisStatementRow, boolean z, boolean z2, View.OnClickListener onClickListener, Function1 function1, int i, Object obj) {
        if ((i & 16) != 0) {
            function1 = null;
        }
        analysisStatementCell.set(analysisStatementRow, z, z2, onClickListener, function1);
    }

    public final void set(AnalysisStatementRow row, boolean expand, boolean divider, View.OnClickListener onClick, Function1<? super CharSequence, Unit> onCopy) {
        this.onCopy = onCopy;
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            valueAnimator.cancel();
        }
        this.animator = null;
        boolean z = (row.getEvidence() == null && row.getValues().isEmpty() && row.getNotes().isEmpty()) ? false : true;
        boolean z2 = expand && z;
        boolean z3 = Intrinsics.areEqual(this.boundKey, row.getKey()) && this.expanded != z2;
        this.boundKey = row.getKey();
        this.expanded = z2;
        this.icon.bind(row.getIconRes(), row.getColor());
        this.titleView.setText(row.getTitle());
        this.subtitleView.setText(row.getSubtitle());
        TextView textView = this.subtitleView;
        CharSequence subtitle = row.getSubtitle();
        textView.setVisibility((subtitle == null || subtitle.length() == 0) ? 8 : 0);
        this.arrowView.setVisibility(z ? 0 : 8);
        this.header.setTag(row.getKey());
        FrameLayout frameLayout = this.header;
        if (!z) {
            onClick = null;
        }
        frameLayout.setOnClickListener(onClick);
        this.header.setClickable(z);
        if (z2 && row != this.boundRow) {
            this.boundRow = row;
            buildDocs(row);
        }
        float f = z2 ? 1.0f : 0.0f;
        this.arrowView.animate().cancel();
        ImageView imageView = this.arrowView;
        if (z3) {
            ViewPropertyAnimator duration = imageView.animate().rotation(180.0f * f).setDuration(340L);
            CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
            duration.setInterpolator(cubicBezierInterpolator).start();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.progress, f);
            valueAnimatorOfFloat.setDuration(340L);
            valueAnimatorOfFloat.setInterpolator(cubicBezierInterpolator);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.plugins.ui.components.AnalysisStatementCell$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.setProgress(((Float) valueAnimator2.getAnimatedValue()).floatValue());
                }
            });
            valueAnimatorOfFloat.addListener(new Animator.AnimatorListener() { // from class: com.exteragram.messenger.plugins.ui.components.AnalysisStatementCell$set$lambda$4$$inlined$doOnEnd$1
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (this.this$0.expanded) {
                        return;
                    }
                    this.this$0.clearDocs();
                }
            });
            valueAnimatorOfFloat.start();
            this.animator = valueAnimatorOfFloat;
        } else {
            imageView.setRotation(180.0f * f);
            setProgress(f);
            if (!z2) {
                clearDocs();
            }
        }
        this.needDivider = divider;
        requestLayout();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setProgress(float value) {
        this.progress = value;
        this.docsView.setAlpha(value);
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void clearDocs() {
        this.boundRow = null;
        this.docsView.removeAllViews();
    }

    private final void buildDocs(AnalysisStatementRow row) {
        Float fValueOf;
        this.docsView.removeAllViews();
        boolean z = (row.getValues().isEmpty() && row.getNotes().isEmpty()) ? false : true;
        if (z) {
            LinearLayout linearLayoutBlock = block();
            for (String str : row.getValues()) {
                linearLayoutBlock.addView(copying(monoText(str, Theme.key_windowBackgroundWhiteBlackText), str), lineParams());
            }
            Iterator<T> it = row.getNotes().iterator();
            while (it.hasNext()) {
                linearLayoutBlock.addView(noteText((CharSequence) it.next()), lineParams());
            }
            this.docsView.addView(linearLayoutBlock, LayoutHelper.createLinear(-1, -2));
        }
        AnalysisEvidence evidence = row.getEvidence();
        if (evidence == null || evidence.getLines().isEmpty()) {
            return;
        }
        TextPaint paint = monoText(_UrlKt.FRAGMENT_ENCODE_SET, Theme.key_windowBackgroundWhiteGrayText).getPaint();
        List<AnalysisEvidence.Line> lines = evidence.getLines();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<T> it2 = lines.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next = it2.next();
            CharSequence label = ((AnalysisEvidence.Line) next).getLabel();
            String string = label != null ? label.toString() : null;
            Object arrayList = linkedHashMap.get(string);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(string, arrayList);
            }
            ((List) arrayList).add(next);
        }
        int i = 0;
        for (Object obj : linkedHashMap.entrySet()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Map.Entry entry = (Map.Entry) obj;
            String str2 = (String) entry.getKey();
            List list = (List) entry.getValue();
            LinearLayout linearLayoutBlock2 = block();
            if (str2 != null) {
                linearLayoutBlock2.addView(inset(monoText(str2, Theme.key_windowBackgroundWhiteGrayText)), lineParams());
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : list) {
                if (((AnalysisEvidence.Line) obj2).getLine() > 0) {
                    arrayList2.add(obj2);
                }
            }
            Iterator it3 = arrayList2.iterator();
            if (it3.hasNext()) {
                float fMeasureText = paint.measureText(String.valueOf(((AnalysisEvidence.Line) it3.next()).getLine()));
                while (it3.hasNext()) {
                    fMeasureText = Math.max(fMeasureText, paint.measureText(String.valueOf(((AnalysisEvidence.Line) it3.next()).getLine())));
                }
                fValueOf = Float.valueOf(fMeasureText);
            } else {
                fValueOf = null;
            }
            int iFloatValue = fValueOf != null ? (int) fValueOf.floatValue() : 0;
            Iterator it4 = list.iterator();
            while (it4.hasNext()) {
                linearLayoutBlock2.addView(codeLine((AnalysisEvidence.Line) it4.next(), iFloatValue), lineParams());
            }
            if (i == linkedHashMap.size() - 1 && evidence.getMore() > 0) {
                linearLayoutBlock2.addView(inset(monoText(LocaleController.formatString(C2807R.string.PluginAnalysisMorePlaces, Integer.valueOf(evidence.getMore())), Theme.key_windowBackgroundWhiteGrayText)), lineParams());
            }
            this.docsView.addView(linearLayoutBlock2, LayoutHelper.createLinear(-1, -2, 0.0f, (i > 0 || z) ? 8.0f : 0.0f, 0.0f, 0.0f));
            i = i2;
        }
    }

    private final LinearLayout block() {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        int iDp = AndroidUtilities.dp(6.0f);
        int iDp2 = AndroidUtilities.dp(8.0f);
        linearLayout.setPadding(iDp, iDp2, iDp, iDp2);
        linearLayout.setBackground(Theme.createRoundRectDrawable(PluginAnalysisCellsKt.analysisInnerRadius(), Theme.multAlpha(color(Theme.key_windowBackgroundWhiteBlackText), 0.06f)));
        return linearLayout;
    }

    private final LinearLayout.LayoutParams lineParams() {
        return LayoutHelper.createLinear(-1, -2, 0.0f, 0.0f, 0.0f, 0.0f);
    }

    private final <T extends View> T inset(T t) {
        t.setPadding(AndroidUtilities.dp(6.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(6.0f), AndroidUtilities.dp(4.0f));
        return t;
    }

    private final TextView noteText(CharSequence text) {
        TextView textView = new TextView(getContext());
        PluginAnalysisCellsKt.setTextMetrics$default(textView, 13.0f, 18.0f, null, 4, null);
        textView.setTextColor(color(Theme.key_windowBackgroundWhiteGrayText));
        textView.setText(text);
        return (TextView) inset(textView);
    }

    private final TextView monoText(CharSequence text, int colorKey) {
        TextView textView = new TextView(getContext());
        PluginAnalysisCellsKt.setTextMetrics(textView, 13.0f, 18.0f, this.mono);
        textView.setTextColor(color(colorKey));
        textView.setText(text);
        return textView;
    }

    private final <T extends View> T copying(T t, final CharSequence charSequence) {
        T t2 = (T) inset(t);
        int iAnalysisLineRadiusDp = PluginAnalysisCellsKt.analysisLineRadiusDp();
        t2.setBackground(Theme.createRadSelectorDrawable(color(Theme.key_listSelector), iAnalysisLineRadiusDp, iAnalysisLineRadiusDp));
        t2.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.AnalysisStatementCell$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AnalysisStatementCell.m3134$r8$lambda$PFajhltqUAjrYd4wnbpy4Ih9A(this.f$0, charSequence, view);
            }
        });
        return t2;
    }

    /* JADX INFO: renamed from: $r8$lambda$-PFajhltqUAjrYd4-wnbpy4Ih9A, reason: not valid java name */
    public static void m3134$r8$lambda$PFajhltqUAjrYd4wnbpy4Ih9A(AnalysisStatementCell analysisStatementCell, CharSequence charSequence, View view) {
        Function1<? super CharSequence, Unit> function1 = analysisStatementCell.onCopy;
        if (function1 != null) {
            function1.invoke(charSequence);
        }
    }

    private final LinearLayout codeLine(AnalysisEvidence.Line line, int gutterWidth) {
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        copying(linearLayout, line.getCopy());
        if (gutterWidth > 0) {
            TextView textViewMonoText = monoText(line.getLine() > 0 ? String.valueOf(line.getLine()) : _UrlKt.FRAGMENT_ENCODE_SET, Theme.key_windowBackgroundWhiteGrayText);
            textViewMonoText.setGravity(8388613);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(gutterWidth, -2);
            layoutParams.setMarginEnd(AndroidUtilities.dp(12.0f));
            Unit unit = Unit.INSTANCE;
            linearLayout.addView(textViewMonoText, layoutParams);
        }
        TextView textViewMonoText2 = monoText(codeBreaks(line.getCode()), Theme.key_windowBackgroundWhiteBlackText);
        textViewMonoText2.setMaxLines(4);
        textViewMonoText2.setEllipsize(TextUtils.TruncateAt.END);
        linearLayout.addView(textViewMonoText2, LayoutHelper.createLinear(0, -2, 1.0f));
        return linearLayout;
    }

    private final CharSequence codeBreaks(CharSequence code) {
        int i;
        if (code instanceof Spanned) {
            return code;
        }
        StringBuilder sb = new StringBuilder(code.length() + 8);
        int length = code.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = code.charAt(i2);
            sb.append(cCharAt);
            if ((cCharAt == '.' || cCharAt == '(' || cCharAt == ',' || cCharAt == '[' || cCharAt == '=') && (i = i2 + 1) < code.length() && !CharsKt.isWhitespace(code.charAt(i))) {
                sb.append((char) 8203);
            }
        }
        return sb;
    }

    private final int color(int key) {
        return Theme.getColor(key, this.resourcesProvider);
    }

    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u001f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001fB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J4\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J4\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\b\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0016H\u0016J\u0019\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u0014H\u0096\u0002J\u0018\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u0014H\u0016¨\u0006 "}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/AnalysisStatementCell$Factory;", "Lorg/telegram/ui/Components/UItem$UItemFactory;", "Lcom/exteragram/messenger/plugins/ui/components/AnalysisStatementCell;", "<init>", "()V", "createView", "context", "Landroid/content/Context;", "listView", "Lorg/telegram/ui/Components/RecyclerListView;", "currentAccount", _UrlKt.FRAGMENT_ENCODE_SET, "classGuid", "resourcesProvider", "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;", "bindView", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.VIEW, "Landroid/view/View;", PluginsConstants.Settings.ITEM, "Lorg/telegram/ui/Components/UItem;", PluginsConstants.Settings.TYPE_DIVIDER, _UrlKt.FRAGMENT_ENCODE_SET, "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "Lorg/telegram/ui/Components/UniversalRecyclerView;", "isClickable", "equals", "a", "b", "contentsEquals", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Factory extends UItem.UItemFactory<AnalysisStatementCell> {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        @JvmStatic
        public static final UItem of(AnalysisStatementRow analysisStatementRow, boolean z, View.OnClickListener onClickListener, Function1<? super CharSequence, Unit> function1) {
            return INSTANCE.of(analysisStatementRow, z, onClickListener, function1);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        /* JADX INFO: renamed from: isClickable */
        public boolean getIsClickableValue() {
            return false;
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public AnalysisStatementCell createView(Context context, RecyclerListView listView, int currentAccount, int classGuid, Theme.ResourcesProvider resourcesProvider) {
            return new AnalysisStatementCell(context, resourcesProvider);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public void bindView(View view, UItem item, boolean divider, UniversalAdapter adapter, UniversalRecyclerView listView) {
            Object obj = item.object;
            AnalysisStatementRow analysisStatementRow = obj instanceof AnalysisStatementRow ? (AnalysisStatementRow) obj : null;
            if (analysisStatementRow == null) {
                return;
            }
            AnalysisStatementCell analysisStatementCell = (AnalysisStatementCell) view;
            boolean z = item.checked;
            View.OnClickListener onClickListener = item.clickCallback;
            Object obj2 = item.object2;
            analysisStatementCell.set(analysisStatementRow, z, divider, onClickListener, TypeIntrinsics.isFunctionOfArity(obj2, 1) ? (Function1) obj2 : null);
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean equals(UItem a2, UItem b2) {
            return a2.id == b2.id;
        }

        @Override // org.telegram.ui.Components.UItem.UItemFactory
        public boolean contentsEquals(UItem a2, UItem b2) {
            return a2.id == b2.id && a2.checked == b2.checked && a2.object == b2.object;
        }

        @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0010\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J:\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0016\b\u0002\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\rH\u0007¨\u0006\u0010"}, d2 = {"Lcom/exteragram/messenger/plugins/ui/components/AnalysisStatementCell$Factory$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "of", "Lorg/telegram/ui/Components/UItem;", "row", "Lcom/exteragram/messenger/plugins/ui/components/AnalysisStatementRow;", "expanded", _UrlKt.FRAGMENT_ENCODE_SET, "onClick", "Landroid/view/View$OnClickListener;", "onCopy", "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ UItem of$default(Companion companion, AnalysisStatementRow analysisStatementRow, boolean z, View.OnClickListener onClickListener, Function1 function1, int i, Object obj) {
                if ((i & 8) != 0) {
                    function1 = null;
                }
                return companion.of(analysisStatementRow, z, onClickListener, function1);
            }

            @JvmStatic
            public final UItem of(AnalysisStatementRow row, boolean expanded, View.OnClickListener onClick, Function1<? super CharSequence, Unit> onCopy) {
                UItem uItemOfFactory = UItem.ofFactory(Factory.class);
                uItemOfFactory.id = row.getKey().hashCode();
                uItemOfFactory.object = row;
                uItemOfFactory.object2 = onCopy;
                uItemOfFactory.checked = expanded;
                uItemOfFactory.clickCallback = onClick;
                return uItemOfFactory;
            }
        }

        static {
            UItem.UItemFactory.setup(new Factory());
        }
    }
}
