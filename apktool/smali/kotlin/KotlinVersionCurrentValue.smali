.class final Lkotlin/KotlinVersionCurrentValue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlin/KotlinVersionCurrentValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/KotlinVersionCurrentValue;

    invoke-direct {v0}, Lkotlin/KotlinVersionCurrentValue;-><init>()V

    sput-object v0, Lkotlin/KotlinVersionCurrentValue;->INSTANCE:Lkotlin/KotlinVersionCurrentValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final get()Lkotlin/KotlinVersion;
    .locals 3

    .line 82
    new-instance v0, Lkotlin/KotlinVersion;

    const/4 v1, 0x2

    const/16 v2, 0x15

    invoke-direct {v0, v1, v1, v2}, Lkotlin/KotlinVersion;-><init>(III)V

    return-object v0
.end method
