.class Lorg/telegram/ui/ActionBar/BottomSheet$2;
.super Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/BottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 1166
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$2;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1179
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1180
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$2;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->mainContainerDispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    const/4 v0, 0x1

    .line 1170
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$2;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fgetallowDrawContent(Lorg/telegram/ui/ActionBar/BottomSheet;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return v0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1172
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1191
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 1193
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$2;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$mregisterBackCallback(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    .line 1195
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$2$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/BottomSheet$2$1;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet$2;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1185
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$2;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$fputlastInsets(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/WindowInsets;)V

    .line 1186
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet$2;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1205
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1206
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 1207
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet$2;->this$0:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->-$$Nest$munregisterBackCallback(Lorg/telegram/ui/ActionBar/BottomSheet;)V

    .line 1209
    :cond_0
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Landroid/widget/FrameLayout;)V

    return-void
.end method
