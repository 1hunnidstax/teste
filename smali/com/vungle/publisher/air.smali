.class public final Lcom/vungle/publisher/air;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahp$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/air$a;
    }
.end annotation

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
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
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
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/vungle/publisher/air;->a:Lcom/vungle/publisher/ahp;

    .line 38
    iput-object p2, p0, Lcom/vungle/publisher/air;->b:Lcom/vungle/publisher/aii;

    .line 39
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 30
    check-cast p1, Lcom/vungle/publisher/ahu;

    new-instance v0, Lcom/vungle/publisher/air$a;

    iget-object v1, p0, Lcom/vungle/publisher/air;->b:Lcom/vungle/publisher/aii;

    invoke-direct {v0, p1, v1}, Lcom/vungle/publisher/air$a;-><init>(Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/aii;)V

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahv;)V

    iget-object v1, p0, Lcom/vungle/publisher/air;->a:Lcom/vungle/publisher/ahp;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahv;

    return-void
.end method
