.class public final synthetic Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChannelAdminLogActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda12;->f$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->$r8$lambda$k47-7S02PPu28vCEafLwYVSqI4s(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
