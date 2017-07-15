.class public final Lcom/vungle/publisher/ajd;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahp$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/ahp$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/vungle/publisher/ahs;

.field final b:Lcom/vungle/publisher/ahp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahp",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ahp;Lcom/vungle/publisher/ahs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahp",
            "<TT;>;",
            "Lcom/vungle/publisher/ahs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/vungle/publisher/ajd;->a:Lcom/vungle/publisher/ahs;

    .line 37
    iput-object p1, p0, Lcom/vungle/publisher/ajd;->b:Lcom/vungle/publisher/ahp;

    .line 38
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 30
    check-cast p1, Lcom/vungle/publisher/ahu;

    iget-object v0, p0, Lcom/vungle/publisher/ajd;->a:Lcom/vungle/publisher/ahs;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahs;->a()Lcom/vungle/publisher/ahs$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahv;)V

    new-instance v1, Lcom/vungle/publisher/ajd$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/vungle/publisher/ajd$1;-><init>(Lcom/vungle/publisher/ajd;Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/ahs$a;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahs$a;->a(Lcom/vungle/publisher/aie;)Lcom/vungle/publisher/ahv;

    return-void
.end method
