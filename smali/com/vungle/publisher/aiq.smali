.class public final Lcom/vungle/publisher/aiq;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahp$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/aiq$a;
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
.field private final a:Lcom/vungle/publisher/ahq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/vungle/publisher/ahp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahp",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ahp;Lcom/vungle/publisher/ahq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahp",
            "<TT;>;",
            "Lcom/vungle/publisher/ahq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/vungle/publisher/aiq;->b:Lcom/vungle/publisher/ahp;

    .line 36
    iput-object p2, p0, Lcom/vungle/publisher/aiq;->a:Lcom/vungle/publisher/ahq;

    .line 37
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 30
    check-cast p1, Lcom/vungle/publisher/ahu;

    iget-object v0, p0, Lcom/vungle/publisher/aiq;->b:Lcom/vungle/publisher/ahp;

    new-instance v1, Lcom/vungle/publisher/aiq$a;

    iget-object v2, p0, Lcom/vungle/publisher/aiq;->a:Lcom/vungle/publisher/ahq;

    invoke-direct {v1, p1, v2}, Lcom/vungle/publisher/aiq$a;-><init>(Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/ahq;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahv;

    return-void
.end method
