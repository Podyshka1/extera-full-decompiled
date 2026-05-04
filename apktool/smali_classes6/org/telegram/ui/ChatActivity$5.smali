.class Lorg/telegram/ui/ChatActivity$5;
.super Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->onGetDebugItems()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)V
    .locals 0

    .line 1429
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$5;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimationProperties$FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1437
    invoke-static {}, Lorg/telegram/ui/ChatActivity;->-$$Nest$sfgetSKELETON_LIGHT_OVERLAY_ALPHA()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 0

    float-to-int p1, p2

    .line 1432
    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$sfputSKELETON_LIGHT_OVERLAY_ALPHA(I)V

    return-void
.end method
