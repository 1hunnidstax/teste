.class final Lcom/tapjoy/TJCorePlacement$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/mediation/TJCustomPlacementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCorePlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/fa$a;

.field final synthetic b:Lcom/tapjoy/TJCorePlacement;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/internal/fa$a;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement$10;->b:Lcom/tapjoy/TJCorePlacement;

    iput-object p2, p0, Lcom/tapjoy/TJCorePlacement$10;->a:Lcom/tapjoy/internal/fa$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCustomPlacementContentDismiss()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$10;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->onCustomPlacementContentDismiss()V

    .line 664
    return-void
.end method

.method public final onCustomPlacementContentShown()V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$10;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->onCustomPlacementContentShown()V

    .line 659
    return-void
.end method

.method public final onCustomPlacementFailure(Ljava/lang/Error;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Error;

    .prologue
    .line 652
    const-string v0, "TJPlacement.requestContent"

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$10;->a:Lcom/tapjoy/internal/fa$a;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/fa;->a(Ljava/lang/String;Lcom/tapjoy/internal/fa$a;)V

    .line 653
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$10;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCorePlacement;->onCustomPlacementFailure(Ljava/lang/Error;)V

    .line 654
    return-void
.end method

.method public final onCustomPlacementLoad()V
    .locals 2

    .prologue
    .line 646
    const-string v0, "TJPlacement.requestContent"

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement$10;->a:Lcom/tapjoy/internal/fa$a;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/fa;->a(Ljava/lang/String;Lcom/tapjoy/internal/fa$a;)V

    .line 647
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$10;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement;->onCustomPlacementLoad()V

    .line 648
    return-void
.end method

.method public final onCustomPlacementReward(Ljava/lang/String;I)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "amount"    # I

    .prologue
    .line 668
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$10;->b:Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJCorePlacement;->onCustomPlacementReward(Ljava/lang/String;I)V

    .line 669
    return-void
.end method
