.class Lorg/telegram/ui/CacheControlActivity$3;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CacheControlActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CacheControlActivity;Landroid/content/Context;)V
    .locals 0

    .line 1301
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$3;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected allowSelectChildAtPosition(Landroid/view/View;)Z
    .locals 1

    .line 1304
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$3;->this$0:Lorg/telegram/ui/CacheControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/CacheControlActivity;->-$$Nest$fgetcacheChart(Lorg/telegram/ui/CacheControlActivity;)Lorg/telegram/ui/Components/CacheChart;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
