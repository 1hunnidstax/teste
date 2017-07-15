.class final Lcom/vungle/publisher/afo$1$2;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aij;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/afo$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/aij",
        "<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/afo$1;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/afo$1;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vungle/publisher/afo$1$2;->a:Lcom/vungle/publisher/afo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 49
    check-cast p1, Ljava/lang/Throwable;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/vungle/publisher/afo$1$2;->a:Lcom/vungle/publisher/afo$1;

    iget v1, v1, Lcom/vungle/publisher/afo$1;->a:I

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lcom/vungle/publisher/ahx;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_0
    return-object p2
.end method
