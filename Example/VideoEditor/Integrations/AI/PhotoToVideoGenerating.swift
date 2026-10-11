import Foundation

protocol PhotoToVideoGenerating: Sendable {
    func generateVideo(from imageData: Data, prompt: String) async throws -> URL
}

struct LocalPhotoToVideoClient: PhotoToVideoGenerating {
    enum ClientError: LocalizedError {
        case notConfigured

        var errorDescription: String? {
            switch self {
            case .notConfigured:
                return "La generación local todavía no está configurada. Conecta el PC con el modelo de IA."
            }
        }
    }

    func generateVideo(from imageData: Data, prompt: String) async throws -> URL {
        throw ClientError.notConfigured
    }
}
