.class public final Lokhttp3/internal/EmptyTags;
.super Lokhttp3/internal/Tags;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lokhttp3/internal/EmptyTags;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/internal/EmptyTags;

    invoke-direct {v0}, Lokhttp3/internal/EmptyTags;-><init>()V

    sput-object v0, Lokhttp3/internal/EmptyTags;->INSTANCE:Lokhttp3/internal/EmptyTags;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, v0}, Lokhttp3/internal/Tags;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public get(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass;",
            ")TT;"
        }
    .end annotation

    const-string/jumbo v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public plus(Lkotlin/reflect/KClass;Ljava/lang/Object;)Lokhttp3/internal/Tags;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/KClass;",
            "TT;)",
            "Lokhttp3/internal/Tags;"
        }
    .end annotation

    const-string/jumbo v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 52
    new-instance v0, Lokhttp3/internal/LinkedTags;

    invoke-direct {v0, p1, p2, p0}, Lokhttp3/internal/LinkedTags;-><init>(Lkotlin/reflect/KClass;Ljava/lang/Object;Lokhttp3/internal/Tags;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 58
    const-string/jumbo v0, "{}"

    return-object v0
.end method
