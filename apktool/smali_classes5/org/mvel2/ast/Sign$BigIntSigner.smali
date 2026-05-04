.class Lorg/mvel2/ast/Sign$BigIntSigner;
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
    name = "BigIntSigner"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mvel2/ast/Sign;


# direct methods
.method private constructor <init>(Lorg/mvel2/ast/Sign;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lorg/mvel2/ast/Sign$BigIntSigner;->this$0:Lorg/mvel2/ast/Sign;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/mvel2/ast/Sign;Lorg/mvel2/ast/Sign$1;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lorg/mvel2/ast/Sign$BigIntSigner;-><init>(Lorg/mvel2/ast/Sign;)V

    return-void
.end method


# virtual methods
.method public sign(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 112
    new-instance v0, Ljava/math/BigInteger;

    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
