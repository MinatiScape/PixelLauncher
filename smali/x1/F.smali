.class public final synthetic Lx1/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/quickstep/interaction/TutorialController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/TutorialController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/F;->b:Lcom/android/quickstep/interaction/TutorialController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lx1/F;->b:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->transitToController()V

    return-void
.end method
