.class public final synthetic LX1/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:Lcom/google/android/apps/nexuslauncher/qsb/UniversalSearchInputView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/UniversalSearchInputView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX1/U;->b:Lcom/google/android/apps/nexuslauncher/qsb/UniversalSearchInputView;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, LX1/U;->b:Lcom/google/android/apps/nexuslauncher/qsb/UniversalSearchInputView;

    invoke-static {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/UniversalSearchInputView;->x(Lcom/google/android/apps/nexuslauncher/qsb/UniversalSearchInputView;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
