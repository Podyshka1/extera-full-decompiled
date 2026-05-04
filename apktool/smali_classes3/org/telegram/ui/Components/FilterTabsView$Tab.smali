.class public Lorg/telegram/ui/Components/FilterTabsView$Tab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FilterTabsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Tab"
.end annotation


# instance fields
.field public counter:I

.field public emoticon:Ljava/lang/String;

.field public iconWidth:I

.field public id:I

.field public isDefault:Z

.field public isLocked:Z

.field public noanimate:Z

.field public realTitle:Ljava/lang/CharSequence;

.field final synthetic this$0:Lorg/telegram/ui/Components/FilterTabsView;

.field public title:Ljava/lang/CharSequence;

.field public titleWidth:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/FilterTabsView;ILjava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 0

    .line 138
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    .line 140
    sget p1, Lcom/exteragram/messenger/ExteraConfig;->tabIcons:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    move-object p1, p3

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    .line 141
    iput-object p3, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->realTitle:Ljava/lang/CharSequence;

    .line 142
    iput-boolean p5, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->noanimate:Z

    .line 144
    iput-object p4, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->emoticon:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getWidth(Z)I
    .locals 4

    .line 148
    invoke-static {}, Lcom/exteragram/messenger/utils/ui/FolderIcons;->getTotalIconWidth()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->iconWidth:I

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v1, v1, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->measureCorrectly(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->titleWidth:I

    .line 150
    iget v1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->iconWidth:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 153
    iget-object v2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;->getTabCounter(I)I

    move-result v2

    if-gez v2, :cond_0

    move v2, v1

    :cond_0
    if-eqz p1, :cond_2

    .line 158
    iput v2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    goto :goto_0

    .line 161
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->counter:I

    :cond_2
    :goto_0
    if-lez v2, :cond_3

    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "%d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 167
    iget-object v1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgettextCounterPaint(Lorg/telegram/ui/Components/FilterTabsView;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    const v1, 0x40eaa7f0    # 7.333f

    .line 168
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr p1, v1

    const/high16 v1, -0x40000000    # -2.0f

    .line 169
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_1

    .line 171
    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isDefault:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetisEditing(Lorg/telegram/ui/Components/FilterTabsView;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x414553f8    # 12.333f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :cond_4
    move p1, v1

    :goto_1
    add-int/2addr v0, p1

    const/high16 p1, 0x41800000    # 16.0f

    .line 175
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public setTitle(Ljava/lang/String;Ljava/util/ArrayList;Z)Z
    .locals 2

    .line 179
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->realTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 182
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->realTitle:Ljava/lang/CharSequence;

    .line 183
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    .line 184
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object p1, p1, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/FilterTabsView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    .line 187
    sget p2, Lcom/exteragram/messenger/ExteraConfig;->tabIcons:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->title:Ljava/lang/CharSequence;

    .line 188
    iput-boolean p3, p0, Lorg/telegram/ui/Components/FilterTabsView$Tab;->noanimate:Z

    const/4 p1, 0x1

    return p1
.end method
