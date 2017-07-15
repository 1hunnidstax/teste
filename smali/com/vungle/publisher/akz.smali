.class abstract Lcom/vungle/publisher/akz;
.super Lcom/vungle/publisher/akv;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vungle/publisher/akv",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final e:J


# instance fields
.field volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-class v0, Lcom/vungle/publisher/akz;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Lcom/vungle/publisher/ali;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/vungle/publisher/akz;->e:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/vungle/publisher/akv;-><init>(I)V

    .line 47
    return-void
.end method


# virtual methods
.method protected final d(J)V
    .locals 7

    .prologue
    .line 42
    sget-object v0, Lcom/vungle/publisher/ali;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/vungle/publisher/akz;->e:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 43
    return-void
.end method
