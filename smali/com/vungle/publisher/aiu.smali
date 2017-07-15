.class public final Lcom/vungle/publisher/aiu;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahp$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/aiu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/ahp$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/vungle/publisher/ahp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahp",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lcom/vungle/publisher/aii;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aii",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ahp;Lcom/vungle/publisher/aii;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahp",
            "<TT;>;",
            "Lcom/vungle/publisher/aii",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/vungle/publisher/aiu;->a:Lcom/vungle/publisher/ahp;

    .line 41
    iput-object p2, p0, Lcom/vungle/publisher/aiu;->b:Lcom/vungle/publisher/aii;

    .line 42
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 33
    check-cast p1, Lcom/vungle/publisher/ahu;

    new-instance v0, Lcom/vungle/publisher/aiu$a;

    iget-object v1, p0, Lcom/vungle/publisher/aiu;->b:Lcom/vungle/publisher/aii;

    invoke-direct {v0, p1, v1}, Lcom/vungle/publisher/aiu$a;-><init>(Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/aii;)V

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahv;)V

    iget-object v1, p0, Lcom/vungle/publisher/aiu;->a:Lcom/vungle/publisher/ahp;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahv;

    return-void
.end method
