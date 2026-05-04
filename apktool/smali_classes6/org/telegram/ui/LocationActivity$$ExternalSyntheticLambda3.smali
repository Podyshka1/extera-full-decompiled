.class public final synthetic Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/IMapsProvider$ITouchInterceptor;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/LocationActivity;

    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/LocationActivity;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/LocationActivity;->$r8$lambda$kNy84dl8LwEJjLoQ7EqLfPQduZw(Lorg/telegram/ui/LocationActivity;Landroid/view/MotionEvent;Lorg/telegram/messenger/IMapsProvider$ICallableMethod;)Z

    move-result p1

    return p1
.end method
