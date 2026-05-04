.class Lorg/mvel2/ast/Sign$LongSigner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/ast/Sign$Signer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/ast/Sign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongSigner"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mvel2/ast/Sign;


# direct methods
.method private constructor <init>(Lorg/mvel2/ast/Sign;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/mvel2/ast/Sign$LongSigner;->this$0:Lorg/mvel2/ast/Sign;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mvel2/ast/Sign;Lorg/mvel2/ast/Sign$1;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lorg/mvel2/ast/Sign$LongSigner;-><init>(Lorg/mvel2/ast/Sign;)V

    return-void
.end method


# virtual methods
.method public sign(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 94
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
