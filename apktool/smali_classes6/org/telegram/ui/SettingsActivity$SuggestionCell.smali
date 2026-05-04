.class public Lorg/telegram/ui/SettingsActivity$SuggestionCell;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/Theme$Colorable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuggestionCell"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SettingsActivity$SuggestionCell$Factory;
    }
.end annotation


# instance fields
.field private no:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private titleView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

.field private yes:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    .line 1335
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1336
    iput-object p2, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v0, 0x1

    .line 1338
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1340
    new-instance v1, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->titleView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    const/high16 v2, 0x41700000    # 15.0f

    .line 1341
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1342
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->titleView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1343
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->titleView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setTextColor(I)V

    .line 1344
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->titleView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1345
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->titleView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x37

    const/16 v6, 0x20

    const/16 v7, 0x14

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x41500000    # 13.0f

    const/4 v3, 0x0

    .line 1347
    invoke-static {p1, v0, v1, v3, p2}, Lorg/telegram/ui/Components/TextHelper;->makeLinkTextView(Landroid/content/Context;FIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    .line 1348
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1349
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v9, 0x42000000    # 32.0f

    const/4 v10, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/16 v6, 0x37

    const/high16 v7, 0x42000000    # 32.0f

    const v8, 0x411547ae    # 9.33f

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1351
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1352
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1354
    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->no:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 1355
    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v1, p1, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->yes:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 1356
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->no:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x2a

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x70

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1357
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->yes:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v7, 0x0

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x18

    const/16 v7, 0x10

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x37

    const/16 v4, 0x18

    const/16 v5, 0x12

    .line 1359
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 1373
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->titleView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-static {p2, v0, v2}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1375
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->no:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 v2, 0x8

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1376
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->no:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;)V

    .line 1377
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->no:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1378
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->yes:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;)V

    .line 1379
    iget-object p1, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->yes:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p1, p6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateColors()V
    .locals 3

    .line 1363
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->titleView:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;->setTextColor(I)V

    .line 1364
    iget-object v0, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->textView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object v2, p0, Lorg/telegram/ui/SettingsActivity$SuggestionCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
