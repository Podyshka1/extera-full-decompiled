.class public final Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$SpecialOperation$JournalModeOperation;
.super Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$SpecialOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$SpecialOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JournalModeOperation"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$SpecialOperation$JournalModeOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$SpecialOperation$JournalModeOperation;

    invoke-direct {v0}, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$SpecialOperation$JournalModeOperation;-><init>()V

    sput-object v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$SpecialOperation$JournalModeOperation;->INSTANCE:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$SpecialOperation$JournalModeOperation;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, v0}, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$SpecialOperation;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
