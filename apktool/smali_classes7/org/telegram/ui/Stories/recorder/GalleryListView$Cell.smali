.class Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/GalleryListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cell"
.end annotation


# static fields
.field private static allQueues:Ljava/util/ArrayList;

.field private static allQueuesIndex:I

.field private static final bitmapsCache:Landroid/util/LruCache;

.field private static final bitmapsUseCounts:Ljava/util/HashMap;


# instance fields
.field private final alwaysShowCheckbox:Z

.field private aspectRatio:F

.field private final bgPaint:Landroid/graphics/Paint;

.field private bitmap:Landroid/graphics/Bitmap;

.field private final bitmapMatrix:Landroid/graphics/Matrix;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field public checkBox:Lorg/telegram/ui/Components/CheckBox2;

.field public checkBoxContainer:Landroid/widget/FrameLayout;

.field private final clipPath:Landroid/graphics/Path;

.field private currentKey:Ljava/lang/String;

.field private currentObject:Ljava/lang/Object;

.field private draftLayout:Landroid/text/StaticLayout;

.field private draftLayoutLeft:F

.field private draftLayoutWidth:F

.field private final draftTextPaint:Landroid/text/TextPaint;

.field private drawDurationPlay:Z

.field private final durationBackgroundPaint:Landroid/graphics/Paint;

.field private durationLayout:Landroid/text/StaticLayout;

.field private durationLayoutLeft:F

.field private durationLayoutWidth:F

.field private final durationPlayDrawable:Landroid/graphics/drawable/Drawable;

.field private final durationTextPaint:Landroid/text/TextPaint;

.field private gradient:Landroid/graphics/LinearGradient;

.field private final gradientMatrix:Landroid/graphics/Matrix;

.field private final gradientPaint:Landroid/graphics/Paint;

.field private loadingBitmap:Ljava/lang/Runnable;

.field private myQueue:Lorg/telegram/messenger/DispatchQueue;

.field private final paintUnderCheck:Landroid/graphics/Paint;

.field private final radii:[F

.field private topLeft:Z

.field private topRight:Z

.field private final unload:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$4FYrQgSL2GJ6KRMKvi8xfI-pWoM(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->lambda$setCheckbox$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$9VTbWBopQEE8qLi4aPgghpvZDwA(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->lambda$loadBitmap$3(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SjHhbtBIqegS7xBRFvLWfZTieqY(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;Ljava/lang/String;Landroid/util/Pair;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->lambda$loadBitmap$2(Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yGZsJxPpPExlAuEfSHXAM-jYf9w(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetbitmap(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentObject(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->currentObject:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetbitmapsUseCounts()Ljava/util/HashMap;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapsUseCounts:Ljava/util/HashMap;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1033
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueues:Ljava/util/ArrayList;

    .line 1036
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapsUseCounts:Ljava/util/HashMap;

    .line 1037
    new-instance v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$2;

    const/16 v1, 0x2d

    invoke-direct {v0, v1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$2;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapsCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FZ)V
    .locals 7

    .line 928
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 903
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapPaint:Landroid/graphics/Paint;

    .line 904
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bgPaint:Landroid/graphics/Paint;

    .line 905
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradientPaint:Landroid/graphics/Paint;

    .line 907
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapMatrix:Landroid/graphics/Matrix;

    .line 908
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradientMatrix:Landroid/graphics/Matrix;

    .line 910
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationBackgroundPaint:Landroid/graphics/Paint;

    .line 911
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationTextPaint:Landroid/text/TextPaint;

    .line 912
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftTextPaint:Landroid/text/TextPaint;

    .line 979
    new-instance v5, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;)V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->unload:Ljava/lang/Runnable;

    .line 1318
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->clipPath:Landroid/graphics/Path;

    const/16 v5, 0x8

    .line 1319
    new-array v5, v5, [F

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->radii:[F

    .line 1321
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->paintUnderCheck:Landroid/graphics/Paint;

    .line 929
    iput p3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->aspectRatio:F

    .line 930
    iput-boolean p4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->alwaysShowCheckbox:Z

    const p3, 0x10ffffff

    .line 932
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p3, 0x4c000000    # 3.3554432E7f

    .line 934
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 935
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const p3, 0x414a8f5c    # 12.66f

    .line 936
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result p3

    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 p3, -0x1

    .line 937
    invoke-virtual {v3, p3}, Landroid/graphics/Paint;->setColor(I)V

    const v0, 0x413547ae    # 11.33f

    .line 938
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 939
    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 940
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lorg/telegram/messenger/R$drawable;->play_mini_video:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 942
    new-instance p3, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$1;

    const/16 v0, 0x18

    invoke-direct {p3, p0, p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$1;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    if-nez p4, :cond_0

    const/4 p2, 0x6

    .line 950
    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x7

    .line 952
    invoke-virtual {p3, p2}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 954
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachCheckBoxBackground:I

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPhotoBackground:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachCheckBoxCheck:I

    invoke-virtual {p2, p3, p4, v0}, Lorg/telegram/ui/Components/CheckBox2;->setColor(III)V

    .line 955
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/CheckBox2;->getCheckBoxBase()Lorg/telegram/ui/Components/CheckBoxBase;

    move-result-object p2

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/CheckBoxBase;->setStrokeBackgroundColor(I)V

    .line 956
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBoxContainer:Landroid/widget/FrameLayout;

    .line 957
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    const/16 p3, 0x11

    const/16 p4, 0x1a

    invoke-static {p4, p4, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 958
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBoxContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x24

    const/high16 v1, 0x42100000    # 36.0f

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 959
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBoxContainer:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 961
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private afterLoad(Ljava/lang/String;Landroid/graphics/Bitmap;[I)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    .line 1227
    :cond_0
    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1228
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->currentKey:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1229
    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->releaseBitmap(Ljava/lang/String;)V

    return-void

    .line 1232
    :cond_1
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    if-nez p3, :cond_2

    .line 1234
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradientPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1235
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradient:Landroid/graphics/LinearGradient;

    goto :goto_0

    .line 1237
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 p2, 0x2

    new-array v6, p2, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1239
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->updateMatrix()V

    .line 1240
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static cleanupQueues()V
    .locals 2

    .line 1093
    invoke-static {}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->releaseAllBitmaps()V

    const/4 v0, 0x0

    .line 1094
    :goto_0
    sget-object v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1095
    sget-object v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1}, Lorg/telegram/messenger/DispatchQueue;->cleanupQueue()V

    .line 1096
    sget-object v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v1}, Lorg/telegram/messenger/DispatchQueue;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1098
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1051
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1053
    sget-object v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapsUseCounts:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    goto :goto_0

    .line 1054
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v3, v2

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private getQueue()Lorg/telegram/messenger/DispatchQueue;
    .locals 4

    .line 1102
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->myQueue:Lorg/telegram/messenger/DispatchQueue;

    if-eqz v0, :cond_0

    return-object v0

    .line 1105
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 1106
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueues:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gallery_load_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->myQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1108
    :cond_1
    sget v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueuesIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueuesIndex:I

    .line 1109
    sget-object v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    .line 1110
    sput v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueuesIndex:I

    .line 1112
    :cond_2
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueues:Ljava/util/ArrayList;

    sget v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->allQueuesIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DispatchQueue;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->myQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 1114
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->myQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method private getThumbnail(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1125
    :cond_0
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x43a50000    # 330.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v1

    .line 1126
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->aspectRatio:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1130
    instance-of v3, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 1131
    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1133
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1134
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1135
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->readBitmap(Lorg/telegram/messenger/MediaController$PhotoEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1137
    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupScale(Landroid/graphics/BitmapFactory$Options;II)V

    .line 1138
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1139
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1140
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1141
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->readBitmap(Lorg/telegram/messenger/MediaController$PhotoEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1143
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->aspectRatio:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 1145
    iget v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientTopColor:I

    if-nez v2, :cond_1

    iget v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientBottomColor:I

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1146
    invoke-static {v5, v1, v5}, Lorg/telegram/ui/Stories/recorder/DominantColors;->getColorsSync(ZLandroid/graphics/Bitmap;Z)[I

    move-result-object v0

    .line 1147
    aget v2, v0, v4

    iput v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientTopColor:I

    .line 1148
    aget v2, v0, v5

    iput v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientBottomColor:I

    goto :goto_0

    .line 1149
    :cond_1
    iget v2, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientTopColor:I

    if-eqz v2, :cond_2

    iget p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientBottomColor:I

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    .line 1150
    new-array v0, v0, [I

    aput v2, v0, v4

    aput p1, v0, v5

    :cond_2
    :goto_0
    move-object p1, v0

    move-object v0, v1

    goto :goto_1

    .line 1153
    :cond_3
    instance-of v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v3, :cond_4

    .line 1154
    check-cast p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftThumbFile:Ljava/io/File;

    if-eqz p1, :cond_4

    .line 1157
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1158
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1159
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1161
    invoke-static {v3, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupScale(Landroid/graphics/BitmapFactory$Options;II)V

    .line 1162
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1163
    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1164
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1165
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_1

    :cond_4
    move-object p1, v0

    .line 1169
    :goto_1
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private key(Lorg/telegram/messenger/MediaController$PhotoEntry;)Ljava/lang/String;
    .locals 2

    .line 1300
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 1303
    :cond_0
    iget-object v1, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    return-object v1

    .line 1305
    :cond_1
    iget-boolean v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v1, :cond_2

    .line 1306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1308
    :cond_2
    iget-object p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    return-object p1
.end method

.method private synthetic lambda$loadBitmap$2(Ljava/lang/String;Landroid/util/Pair;)V
    .locals 1

    .line 1219
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, [I

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->afterLoad(Ljava/lang/String;Landroid/graphics/Bitmap;[I)V

    return-void
.end method

.method private synthetic lambda$loadBitmap$3(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1218
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->getThumbnail(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1219
    new-instance v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;Ljava/lang/String;Landroid/util/Pair;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    .line 979
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->loadBitmap(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$setCheckbox$1(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1017
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBoxContainer:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private loadBitmap(Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1176
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->currentKey:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->releaseBitmap(Ljava/lang/String;)V

    .line 1177
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->currentKey:Ljava/lang/String;

    .line 1178
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    .line 1179
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 1184
    :cond_0
    instance-of v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_1

    .line 1185
    move-object v2, p1

    check-cast v2, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-direct {p0, v2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->key(Lorg/telegram/messenger/MediaController$PhotoEntry;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1186
    :cond_1
    instance-of v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_2

    .line 1187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    check-cast v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->draftId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 1191
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->currentKey:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    .line 1194
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->currentKey:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 1195
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    .line 1196
    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->releaseBitmap(Ljava/lang/String;)V

    .line 1197
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1199
    :cond_4
    iput-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->currentKey:Ljava/lang/String;

    .line 1200
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1201
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradient:Landroid/graphics/LinearGradient;

    if-eqz v1, :cond_5

    .line 1203
    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 1204
    iget v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientTopColor:I

    if-eqz v3, :cond_5

    iget v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientBottomColor:I

    if-eqz v3, :cond_5

    .line 1205
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradientPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/LinearGradient;

    iget v5, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientTopColor:I

    iget v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->gradientBottomColor:I

    filled-new-array {v5, v1}, [I

    move-result-object v9

    const/4 v1, 0x2

    new-array v10, v1, [F

    fill-array-data v10, :array_0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1206
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->updateMatrix()V

    .line 1209
    :cond_5
    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 1210
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 1213
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->loadingBitmap:Ljava/lang/Runnable;

    if-eqz v1, :cond_7

    .line 1214
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->getQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->loadingBitmap:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 1215
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->loadingBitmap:Ljava/lang/Runnable;

    .line 1217
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->getQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, v2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->loadingBitmap:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1078
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    sget-object p1, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapsUseCounts:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1081
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1083
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private readBitmap(Lorg/telegram/messenger/MediaController$PhotoEntry;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1269
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1270
    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 1271
    :cond_1
    iget-boolean v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1272
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    int-to-long v2, p1

    invoke-static {v0, v2, v3, v1, p2}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 1295
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    int-to-long v2, p1

    invoke-static {v0, v2, v3, v1, p2}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private static releaseAllBitmaps()V
    .locals 1

    .line 1088
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapsUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1089
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method private static releaseBitmap(Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    goto :goto_0

    .line 1063
    :cond_0
    sget-object v0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapsUseCounts:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 1065
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-gtz v1, :cond_1

    .line 1067
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1069
    :cond_1
    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method private setDraft(Z)V
    .locals 8

    if-eqz p1, :cond_3

    .line 1409
    new-instance v0, Landroid/text/StaticLayout;

    const-string p1, "StoryDraft"

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    :goto_0
    move v3, p1

    goto :goto_1

    :cond_0
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    goto :goto_0

    :goto_1
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayout:Landroid/text/StaticLayout;

    .line 1410
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p1

    goto :goto_2

    :cond_1
    move p1, v0

    :goto_2
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayoutWidth:F

    .line 1411
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    :cond_2
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayoutLeft:F

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 1413
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayout:Landroid/text/StaticLayout;

    return-void
.end method

.method private setDuration(Ljava/lang/String;)V
    .locals 9

    .line 1397
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1398
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :goto_1
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayout:Landroid/text/StaticLayout;

    .line 1399
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p1

    goto :goto_2

    :cond_1
    move p1, v0

    :goto_2
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayoutWidth:F

    .line 1400
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    :cond_2
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayoutLeft:F

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    .line 1402
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayout:Landroid/text/StaticLayout;

    :goto_3
    const/4 p1, 0x1

    .line 1404
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->drawDurationPlay:Z

    return-void
.end method

.method private updateMatrix()V
    .locals 6

    .line 1244
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1246
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->aspectRatio:F

    const v2, 0x3dcccccd    # 0.1f

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1247
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    .line 1249
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1251
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1252
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1253
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v0, v5

    sub-float/2addr v4, v0

    div-float/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1255
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 1256
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1257
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1258
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradient:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_2

    .line 1259
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradientMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    move-object v0, p1

    .line 1327
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->topLeft:Z

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/high16 v8, 0x40c00000    # 6.0f

    const/4 v2, 0x0

    const/4 v9, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->topRight:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v9

    goto :goto_3

    .line 1328
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1329
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 1330
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1331
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->radii:[F

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->topLeft:Z

    if-eqz v4, :cond_2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    aput v4, v3, v7

    aput v4, v3, v9

    .line 1332
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->radii:[F

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->topRight:Z

    if-eqz v4, :cond_3

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    const/4 v5, 0x3

    aput v4, v3, v5

    aput v4, v3, v6

    .line 1333
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->clipPath:Landroid/graphics/Path;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->radii:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v1, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1334
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move v1, v7

    .line 1338
    :goto_3
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/CheckBox2;->getProgress()F

    move-result v3

    const v4, 0x414a8f5c    # 12.66f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    cmpl-float v2, v3, v2

    const/high16 v10, 0x40000000    # 2.0f

    if-lez v2, :cond_5

    if-nez v1, :cond_4

    .line 1340
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1343
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v3, v10

    sub-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v11, v1, v2

    .line 1344
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->paintUnderCheck:Landroid/graphics/Paint;

    const v2, 0xcffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1345
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v4, v1

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->paintUnderCheck:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1346
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v10

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v10

    invoke-virtual {p1, v11, v11, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1347
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1, v9, v9, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_4

    :cond_5
    move v7, v1

    .line 1350
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v4, v1

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1351
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradient:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_6

    .line 1352
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->gradientPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_6
    move-object v0, p1

    .line 1355
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1356
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1359
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayout:Landroid/text/StaticLayout;

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x40800000    # 4.0f

    if-eqz v1, :cond_8

    .line 1360
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayoutWidth:F

    add-float/2addr v11, v12

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iget-object v13, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayout:Landroid/text/StaticLayout;

    invoke-virtual {v13}, Landroid/text/Layout;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {v1, v5, v9, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1361
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget-object v11, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v9, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1363
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1364
    iget v5, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v5, v9

    iget v9, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayoutLeft:F

    sub-float/2addr v5, v9

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const v9, 0x3faa3d71    # 1.33f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v1, v9

    invoke-virtual {p1, v5, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1365
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->draftLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1366
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1369
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_c

    .line 1370
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    sub-int/2addr v9, v11

    iget-object v11, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {v11}, Landroid/text/Layout;->getHeight()I

    move-result v11

    sub-int/2addr v9, v11

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    iget-boolean v11, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->drawDurationPlay:Z

    const/high16 v12, 0x41800000    # 16.0f

    if-eqz v11, :cond_9

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    goto :goto_6

    :cond_9
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    :goto_6
    add-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayoutWidth:F

    add-float/2addr v10, v11

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v11

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v11, v4

    int-to-float v4, v11

    invoke-virtual {v1, v5, v9, v10, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1371
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v3, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1373
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->drawDurationPlay:Z

    if-eqz v3, :cond_a

    .line 1374
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationPlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    .line 1375
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 1376
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    div-int/2addr v9, v6

    int-to-float v9, v9

    sub-float/2addr v5, v9

    float-to-int v5, v5

    iget v9, v1, Landroid/graphics/RectF;->left:F

    const/high16 v10, 0x41500000    # 13.0f

    .line 1377
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 1378
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    div-int/2addr v8, v6

    int-to-float v6, v8

    add-float/2addr v10, v6

    float-to-int v6, v10

    .line 1374
    invoke-virtual {v3, v4, v5, v9, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1380
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1383
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1384
    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->drawDurationPlay:Z

    if-eqz v4, :cond_b

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_7

    :cond_b
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :goto_7
    int-to-float v2, v2

    add-float/2addr v3, v2

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayoutLeft:F

    sub-float/2addr v3, v2

    iget v1, v1, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1385
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1386
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c
    if-eqz v7, :cond_d

    .line 1390
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1393
    :cond_d
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 966
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 967
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->unload:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 968
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->currentObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 969
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->loadBitmap(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 975
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 976
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->unload:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1419
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    .line 1421
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    int-to-float p1, p1

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->aspectRatio:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    .line 1422
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1420
    invoke-super {p0, v0, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1424
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->updateMatrix()V

    return-void
.end method

.method public set(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    .locals 1

    .line 995
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->currentObject:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 996
    iget-boolean v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->setDuration(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 997
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->setDraft(Z)V

    .line 998
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->loadBitmap(Ljava/lang/Object;)V

    .line 999
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public set(Lorg/telegram/ui/Stories/recorder/StoryEntry;I)V
    .locals 3

    .line 982
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->currentObject:Ljava/lang/Object;

    const/4 v0, 0x0

    if-lez p2, :cond_0

    .line 984
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->setDraft(Z)V

    .line 985
    const-string v1, "StoryDrafts"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p2, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->setDuration(Ljava/lang/String;)V

    .line 986
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->drawDurationPlay:Z

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 988
    iget-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->setDraft(Z)V

    if-eqz p1, :cond_2

    .line 989
    iget-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz p2, :cond_2

    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float p2, v0

    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    iget v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    sub-float/2addr v0, v1

    mul-float/2addr p2, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    float-to-int p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->setDuration(Ljava/lang/String;)V

    .line 991
    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->loadBitmap(Ljava/lang/Object;)V

    return-void
.end method

.method public setCheckbox(ZIZ)V
    .locals 6

    .line 1003
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->alwaysShowCheckbox:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    const/4 v0, 0x0

    if-nez p3, :cond_2

    .line 1007
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBoxContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 1010
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBoxContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 1012
    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const v4, 0x3f333333    # 0.7f

    if-eqz p1, :cond_4

    move v5, v3

    goto :goto_2

    :cond_4
    move v5, v4

    .line 1013
    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    .line 1014
    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;Z)V

    .line 1015
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 1020
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0x140

    .line 1021
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1022
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_4
    if-ltz p2, :cond_6

    .line 1025
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1, v1, p3}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 1026
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CheckBox2;->setNum(I)V

    return-void

    .line 1028
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->checkBox:Lorg/telegram/ui/Components/CheckBox2;

    invoke-virtual {p1, v0, p3}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    return-void
.end method

.method public setRounding(ZZ)V
    .locals 0

    .line 1313
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->topLeft:Z

    .line 1314
    iput-boolean p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$Cell;->topRight:Z

    return-void
.end method
