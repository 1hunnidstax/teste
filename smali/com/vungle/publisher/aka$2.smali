.class final Lcom/vungle/publisher/aka$2;
.super Lcom/vungle/publisher/ajx;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aka;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ajx",
        "<",
        "Ljava/util/Queue",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/vungle/publisher/ajx;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 277
    new-instance v0, Lcom/vungle/publisher/akt;

    sget v1, Lcom/vungle/publisher/aka;->b:I

    invoke-direct {v0, v1}, Lcom/vungle/publisher/akt;-><init>(I)V

    return-object v0
.end method
