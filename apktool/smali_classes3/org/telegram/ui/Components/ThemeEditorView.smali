.class public Lorg/telegram/ui/Components/ThemeEditorView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/Components/ThemeEditorView;


# instance fields
.field private currentThemeDesription:Ljava/util/ArrayList;

.field private currentThemeDesriptionPosition:I

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

.field private final editorHeight:I

.field private final editorWidth:I

.field private hidden:Z

.field private parentActivity:Landroid/app/Activity;

.field private preferences:Landroid/content/SharedPreferences;

.field private themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

.field private wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowManager:Landroid/view/WindowManager;

.field private windowView:Landroid/widget/FrameLayout;


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentThemeDesription(Lorg/telegram/ui/Components/ThemeEditorView;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesription:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentThemeDesriptionPosition(Lorg/telegram/ui/Components/ThemeEditorView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesriptionPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdecelerateInterpolator(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/animation/DecelerateInterpolator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteditorAlert(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteditorWidth(Lorg/telegram/ui/Components/ThemeEditorView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/app/Activity;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthemeInfo(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwallpaperUpdater(Lorg/telegram/ui/Components/ThemeEditorView;)Lorg/telegram/ui/Components/WallpaperUpdater;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwindowLayoutParams(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwindowManager(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/view/WindowManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwindowView(Lorg/telegram/ui/Components/ThemeEditorView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentThemeDesription(Lorg/telegram/ui/Components/ThemeEditorView;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesription:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentThemeDesriptionPosition(Lorg/telegram/ui/Components/ThemeEditorView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->currentThemeDesriptionPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputeditorAlert(Lorg/telegram/ui/Components/ThemeEditorView;Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    return-void
.end method

.method static bridge synthetic -$$Nest$manimateToBoundsMaybe(Lorg/telegram/ui/Components/ThemeEditorView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView;->animateToBoundsMaybe()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhide(Lorg/telegram/ui/Components/ThemeEditorView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView;->hide()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshow(Lorg/telegram/ui/Components/ThemeEditorView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView;->show()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42580000    # 54.0f

    .line 92
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    .line 93
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    return-void
.end method

.method private animateToBoundsMaybe()V
    .locals 18

    move-object/from16 v0, p0

    .line 1664
    iget v1, v0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v1

    .line 1665
    iget v5, v0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    invoke-static {v2, v2, v4, v5}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v5

    .line 1666
    iget v6, v0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    invoke-static {v3, v3, v4, v6}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v6

    .line 1667
    iget v7, v0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    invoke-static {v3, v2, v4, v7}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v7

    .line 1669
    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const/high16 v9, 0x41a00000    # 20.0f

    .line 1670
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    .line 1672
    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x2

    const-string/jumbo v12, "sidex"

    const-string/jumbo v13, "x"

    if-le v10, v9, :cond_0

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v10, :cond_1

    iget v15, v0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    neg-int v15, v15

    div-int/lit8 v15, v15, 0x4

    if-le v10, v15, :cond_1

    :cond_0
    move/from16 v16, v4

    const/high16 v17, 0x3f800000    # 1.0f

    goto/16 :goto_3

    :cond_1
    sub-int v10, v5, v10

    .line 1681
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-le v10, v9, :cond_5

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v15, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    move/from16 v16, v4

    iget v4, v0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    const/high16 v17, 0x3f800000    # 1.0f

    sub-int v14, v15, v4

    if-le v10, v14, :cond_2

    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v15, v4

    if-ge v10, v15, :cond_2

    goto :goto_2

    .line 1690
    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v17

    if-eqz v4, :cond_4

    .line 1692
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1694
    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v4, :cond_3

    .line 1695
    iget v4, v0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    neg-int v4, v4

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-static {v0, v13, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1697
    :cond_3
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    filled-new-array {v4}, [I

    move-result-object v4

    invoke-static {v0, v13, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    move v4, v2

    goto/16 :goto_4

    .line 1701
    :cond_4
    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    sub-int/2addr v5, v1

    int-to-float v1, v5

    div-float/2addr v4, v1

    const-string v1, "px"

    invoke-interface {v8, v1, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1702
    invoke-interface {v8, v12, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    :goto_1
    move v4, v3

    goto :goto_4

    :cond_5
    move/from16 v16, v4

    const/high16 v17, 0x3f800000    # 1.0f

    .line 1683
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1685
    invoke-interface {v8, v12, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1686
    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v17

    if-eqz v4, :cond_6

    .line 1687
    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v2, [F

    aput v17, v12, v3

    invoke-static {v4, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1689
    :cond_6
    filled-new-array {v5}, [I

    move-result-object v4

    invoke-static {v0, v13, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1674
    :goto_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1676
    invoke-interface {v8, v12, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1677
    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v17

    if-eqz v5, :cond_7

    .line 1678
    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v2, [F

    aput v17, v12, v3

    invoke-static {v5, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1680
    :cond_7
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {v0, v13, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v4

    goto :goto_1

    :goto_4
    if-nez v4, :cond_d

    .line 1705
    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v5, v6, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const-string/jumbo v10, "y"

    const-string/jumbo v12, "sidey"

    if-le v5, v9, :cond_b

    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v13

    if-gt v5, v13, :cond_8

    goto :goto_5

    .line 1711
    :cond_8
    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v5, v7, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v9, :cond_a

    if-nez v1, :cond_9

    .line 1713
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1715
    :cond_9
    invoke-interface {v8, v12, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1716
    filled-new-array {v7}, [I

    move-result-object v5

    invoke-static {v0, v10, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1718
    :cond_a
    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-int/2addr v7, v6

    int-to-float v6, v7

    div-float/2addr v5, v6

    const-string v6, "py"

    invoke-interface {v8, v6, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1719
    invoke-interface {v8, v12, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_6

    :cond_b
    :goto_5
    if-nez v1, :cond_c

    .line 1707
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1709
    :cond_c
    invoke-interface {v8, v12, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1710
    filled-new-array {v6}, [I

    move-result-object v5

    invoke-static {v0, v10, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1721
    :goto_6
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_d
    if-eqz v1, :cond_10

    .line 1724
    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v5, :cond_e

    .line 1725
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 1727
    :cond_e
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1728
    iget-object v6, v0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x96

    .line 1729
    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_f

    .line 1731
    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    aput v16, v2, v3

    invoke-static {v4, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1732
    new-instance v2, Lorg/telegram/ui/Components/ThemeEditorView$4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/ThemeEditorView$4;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;)V

    invoke-virtual {v5, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1740
    :cond_f
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1741
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    :cond_10
    return-void
.end method

.method public static getInstance()Lorg/telegram/ui/Components/ThemeEditorView;
    .locals 1

    .line 107
    sget-object v0, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    return-object v0
.end method

.method private static getSideCoord(ZIFI)I
    .locals 2

    if-eqz p0, :cond_0

    .line 1573
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    :goto_0
    sub-int/2addr v0, p3

    goto :goto_1

    .line 1575
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p3

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p3

    goto :goto_0

    :goto_1
    const/high16 p3, 0x41200000    # 10.0f

    if-nez p1, :cond_1

    .line 1579
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1581
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int p1, v0, p1

    goto :goto_2

    :cond_2
    const/high16 p1, 0x41a00000    # 20.0f

    .line 1583
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    add-int/2addr p1, p2

    :goto_2
    if-nez p0, :cond_3

    .line 1586
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result p0

    add-int/2addr p1, p0

    :cond_3
    return p1
.end method

.method private hide()V
    .locals 7

    .line 1592
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1596
    :cond_0
    :try_start_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1597
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v3, [F

    fill-array-data v5, :array_1

    .line 1598
    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v3, [F

    fill-array-data v6, :array_2

    .line 1599
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    aput-object v4, v5, v3

    .line 1597
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1600
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x96

    .line 1601
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1602
    new-instance v2, Lorg/telegram/ui/Components/ThemeEditorView$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ThemeEditorView$3;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1611
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1612
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->hidden:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private show()V
    .locals 3

    .line 1619
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1622
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 1624
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 1625
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->hidden:Z

    .line 1626
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView;->showWithAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private showWithAnimation()V
    .locals 7

    .line 1560
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    sget v1, Lorg/telegram/messenger/R$drawable;->theme_picker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1561
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1562
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v3, [F

    fill-array-data v5, :array_1

    .line 1563
    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v3, [F

    fill-array-data v6, :array_2

    .line 1564
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    aput-object v4, v5, v3

    .line 1562
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1565
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x96

    .line 1566
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1567
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1634
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 1638
    iput-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WallpaperUpdater;->cleanup()V

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 116
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 117
    iput-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 122
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 124
    iput-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorAlert:Lorg/telegram/ui/Components/ThemeEditorView$EditorAlert;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 127
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 129
    :cond_1
    :goto_1
    iput-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    .line 130
    sput-object v1, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    :cond_2
    :goto_2
    return-void
.end method

.method public getX()I
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1747
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1752
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1658
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

    if-eqz v0, :cond_0

    .line 1659
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/WallpaperUpdater;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 8

    .line 1642
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "sidex"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1643
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "sidey"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1644
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "px"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 1645
    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "py"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    .line 1646
    iget-object v6, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    invoke-static {v2, v0, v3, v7}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1647
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    invoke-static {v4, v1, v5, v2}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1649
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1650
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    .line 1653
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public setX(I)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1757
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1758
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {p1, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setY(I)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1763
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1764
    iget-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {p1, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V
    .locals 8

    .line 1396
    sget-object v0, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    if-eqz v0, :cond_0

    .line 1397
    sget-object v0, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ThemeEditorView;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 1399
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->hidden:Z

    .line 1400
    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->themeInfo:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    .line 1401
    new-instance p2, Lorg/telegram/ui/Components/ThemeEditorView$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ThemeEditorView$1;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    .line 1511
    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    .line 1513
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "themeconfig"

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    .line 1515
    const-string/jumbo v1, "sidex"

    const/4 v2, 0x1

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 1516
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "sidey"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1517
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "px"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 1518
    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeEditorView;->preferences:Landroid/content/SharedPreferences;

    const-string v6, "py"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v4

    .line 1521
    :try_start_0
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 1522
    iget v6, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorWidth:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1523
    iget v7, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1524
    invoke-static {v2, p2, v3, v6}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result p2

    iput p2, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1525
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->editorHeight:I

    invoke-static {v0, v1, v4, v2}, Lorg/telegram/ui/Components/ThemeEditorView;->getSideCoord(ZIFI)I

    move-result v0

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1526
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x3

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v0, 0x33

    .line 1527
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0x63

    .line 1528
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const v0, 0x1000208

    .line 1529
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1530
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    invoke-static {v0, v1, p2}, Lorg/telegram/messenger/AndroidUtilities;->setPreferredMaxRefreshRate(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 1531
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, v0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1536
    new-instance p2, Lorg/telegram/ui/Components/WallpaperUpdater;

    new-instance v0, Lorg/telegram/ui/Components/ThemeEditorView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ThemeEditorView$2;-><init>(Lorg/telegram/ui/Components/ThemeEditorView;)V

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1, v0}, Lorg/telegram/ui/Components/WallpaperUpdater;-><init>(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ThemeEditorView;->wallpaperUpdater:Lorg/telegram/ui/Components/WallpaperUpdater;

    .line 1554
    sput-object p0, Lorg/telegram/ui/Components/ThemeEditorView;->Instance:Lorg/telegram/ui/Components/ThemeEditorView;

    .line 1555
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeEditorView;->parentActivity:Landroid/app/Activity;

    .line 1556
    invoke-direct {p0}, Lorg/telegram/ui/Components/ThemeEditorView;->showWithAnimation()V

    return-void

    :catch_0
    move-exception p1

    .line 1533
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method
