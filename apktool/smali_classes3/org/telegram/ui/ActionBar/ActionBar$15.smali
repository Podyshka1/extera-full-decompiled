.class Lorg/telegram/ui/ActionBar/ActionBar$15;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBar;

.field final synthetic val$checkScroll:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBar;Ljava/lang/Runnable;)V
    .locals 0

    .line 2426
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$15;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBar$15;->val$checkScroll:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 2429
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$15;->val$checkScroll:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
