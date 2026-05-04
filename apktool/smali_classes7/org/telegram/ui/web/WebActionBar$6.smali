.class Lorg/telegram/ui/web/WebActionBar$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/WebActionBar;->setColors(IFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/web/WebActionBar;

.field final synthetic val$backgroundColor:I

.field final synthetic val$toDark:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/web/WebActionBar;IF)V
    .locals 0

    .line 602
    iput-object p1, p0, Lorg/telegram/ui/web/WebActionBar$6;->this$0:Lorg/telegram/ui/web/WebActionBar;

    iput p2, p0, Lorg/telegram/ui/web/WebActionBar$6;->val$backgroundColor:I

    iput p3, p0, Lorg/telegram/ui/web/WebActionBar$6;->val$toDark:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 605
    iget-object p1, p0, Lorg/telegram/ui/web/WebActionBar$6;->this$0:Lorg/telegram/ui/web/WebActionBar;

    iget v0, p0, Lorg/telegram/ui/web/WebActionBar$6;->val$backgroundColor:I

    iget v1, p0, Lorg/telegram/ui/web/WebActionBar$6;->val$toDark:F

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/web/WebActionBar;->setColors(IFZ)V

    return-void
.end method
