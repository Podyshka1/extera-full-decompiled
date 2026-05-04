.class Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

.field public final chat_actionBackgroundPaint:Landroid/graphics/Paint;

.field public final chat_actionBackgroundSelectedPaint:Landroid/graphics/Paint;

.field public final chat_actionTextPaint:Landroid/text/TextPaint;

.field public final chat_actionTextPaint2:Landroid/text/TextPaint;

.field public final chat_botButtonPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)V
    .locals 5

    .line 1251
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1252
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->chat_actionTextPaint:Landroid/text/TextPaint;

    .line 1253
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->chat_actionTextPaint2:Landroid/text/TextPaint;

    .line 1254
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->chat_botButtonPaint:Landroid/text/TextPaint;

    .line 1256
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->chat_actionBackgroundPaint:Landroid/graphics/Paint;

    .line 1257
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->chat_actionBackgroundSelectedPaint:Landroid/graphics/Paint;

    .line 1258
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    .line 1260
    sget v3, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    const/16 v4, 0x10

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1261
    sget p1, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    int-to-float p1, p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 p1, 0x41700000    # 15.0f

    .line 1262
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1263
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 p1, 0x15000000

    .line 1264
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public synthetic applyServiceShaderMatrix(IIFF)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$applyServiceShaderMatrix(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IIFF)V

    return-void
.end method

.method public synthetic getAnimatedEmojiColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getAnimatedEmojiColorFilter(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getColor(I)I
    .locals 2

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetcurrentColors(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public synthetic getColorOrDefault(I)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getColorOrDefault(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)I

    move-result p1

    return p1
.end method

.method public synthetic getCurrentColor(I)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getCurrentColor(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)I

    move-result p1

    return p1
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1286
    const-string v0, "drawableMsgIn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1287
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetmsgInDrawable(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1288
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    new-instance v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object v2, v2, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fputmsgInDrawable(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)V

    .line 1290
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetmsgInDrawable(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    return-object p1

    .line 1292
    :cond_1
    const-string v0, "drawableMsgInSelected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 1293
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetmsgInDrawableSelected(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1294
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    new-instance v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fputmsgInDrawableSelected(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)V

    .line 1296
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetmsgInDrawableSelected(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    return-object p1

    .line 1298
    :cond_3
    const-string v0, "drawableMsgOut"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1299
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetmsgOutDrawable(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    if-nez p1, :cond_4

    .line 1300
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    new-instance v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2, v1, v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fputmsgOutDrawable(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)V

    .line 1302
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetmsgOutDrawable(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    return-object p1

    .line 1304
    :cond_5
    const-string v0, "drawableMsgOutSelected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1305
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetmsgOutDrawableSelected(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    if-nez p1, :cond_6

    .line 1306
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    new-instance v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fputmsgOutDrawableSelected(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)V

    .line 1308
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetmsgOutDrawableSelected(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    return-object p1

    .line 1311
    :cond_7
    const-string v0, "drawableMsgInMedia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1312
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetmsgMediaInDrawable(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    if-nez p1, :cond_8

    .line 1313
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    new-instance v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v1, v1, v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fputmsgMediaInDrawable(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)V

    .line 1315
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetmsgMediaInDrawable(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 1316
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetmsgMediaInDrawable(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    return-object p1

    .line 1318
    :cond_9
    const-string v0, "drawableMsgInMediaSelected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1319
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetmsgMediaInDrawableSelected(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    if-nez p1, :cond_a

    .line 1320
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    new-instance v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fputmsgMediaInDrawableSelected(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)V

    .line 1322
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetmsgMediaInDrawableSelected(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    return-object p1

    .line 1324
    :cond_b
    const-string v0, "drawableMsgOutMedia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1325
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetmsgMediaOutDrawable(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    if-nez p1, :cond_c

    .line 1326
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    new-instance v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object v3, v3, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v2, v1, v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fputmsgMediaOutDrawable(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)V

    .line 1328
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetmsgMediaOutDrawable(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    return-object p1

    .line 1330
    :cond_d
    const-string v0, "drawableMsgOutMediaSelected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1331
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetmsgMediaOutDrawableSelected(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    if-nez p1, :cond_e

    .line 1332
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    new-instance v0, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    iget-object v1, v1, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v2, v2, v2, v1}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;-><init>(IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fputmsgMediaOutDrawableSelected(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;)V

    .line 1334
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetmsgMediaOutDrawableSelected(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    move-result-object p1

    return-object p1

    .line 1337
    :cond_f
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getThemeDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getPaint(Ljava/lang/String;)Landroid/graphics/Paint;
    .locals 2

    .line 1274
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "paintChatActionText"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "paintChatActionBackgroundSelected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "paintChatActionBackgroundDarken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "paintChatBotButton"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v0, "paintChatActionText2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1281
    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$getPaint(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object p1

    return-object p1

    .line 1277
    :pswitch_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->chat_actionTextPaint:Landroid/text/TextPaint;

    return-object p1

    .line 1275
    :pswitch_1
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->chat_actionBackgroundSelectedPaint:Landroid/graphics/Paint;

    return-object p1

    .line 1276
    :pswitch_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->chat_actionBackgroundGradientDarkenPaint:Landroid/graphics/Paint;

    return-object p1

    .line 1279
    :pswitch_3
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->chat_botButtonPaint:Landroid/text/TextPaint;

    return-object p1

    .line 1278
    :pswitch_4
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->chat_actionTextPaint2:Landroid/text/TextPaint;

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x58de56a7 -> :sswitch_4
        0x6610efa3 -> :sswitch_3
        0x6ab51c39 -> :sswitch_2
        0x711719b5 -> :sswitch_1
        0x790115f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic hasGradientService()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$hasGradientService(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Z

    move-result v0

    return v0
.end method

.method public isDark()Z
    .locals 1

    .line 1342
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView$7;->this$0:Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;->-$$Nest$fgetisDark(Lorg/telegram/ui/Components/Paint/Views/MessageEntityView;)Z

    move-result v0

    return v0
.end method

.method public synthetic setAnimatedColor(II)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider$-CC;->$default$setAnimatedColor(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    return-void
.end method
