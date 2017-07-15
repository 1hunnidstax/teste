.class final Lcom/vungle/publisher/akc$2;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aii;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/akc;->a(Lcom/vungle/publisher/ahs;)Lcom/vungle/publisher/ahp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/aii",
        "<",
        "Lcom/vungle/publisher/aie;",
        "Lcom/vungle/publisher/ahv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/ahs;

.field final synthetic b:Lcom/vungle/publisher/akc;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/akc;Lcom/vungle/publisher/ahs;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/vungle/publisher/akc$2;->b:Lcom/vungle/publisher/akc;

    iput-object p2, p0, Lcom/vungle/publisher/akc$2;->a:Lcom/vungle/publisher/ahs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 106
    check-cast p1, Lcom/vungle/publisher/aie;

    iget-object v0, p0, Lcom/vungle/publisher/akc$2;->a:Lcom/vungle/publisher/ahs;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahs;->a()Lcom/vungle/publisher/ahs$a;

    move-result-object v0

    new-instance v1, Lcom/vungle/publisher/akc$2$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/vungle/publisher/akc$2$1;-><init>(Lcom/vungle/publisher/akc$2;Lcom/vungle/publisher/aie;Lcom/vungle/publisher/ahs$a;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahs$a;->a(Lcom/vungle/publisher/aie;)Lcom/vungle/publisher/ahv;

    return-object v0
.end method
