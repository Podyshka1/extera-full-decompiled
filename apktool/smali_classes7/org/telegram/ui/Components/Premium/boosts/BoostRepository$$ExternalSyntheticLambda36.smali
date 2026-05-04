.class public final synthetic Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda36;->f$0:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda36;->f$0:Ljava/util/Comparator;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_help_country;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->$r8$lambda$hJzHFurCZq_WE9Q8PWPoSTR-tmU(Ljava/util/Comparator;Lorg/telegram/tgnet/TLRPC$TL_help_country;Lorg/telegram/tgnet/TLRPC$TL_help_country;)I

    move-result p1

    return p1
.end method
