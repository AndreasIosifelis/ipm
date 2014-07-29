<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class IPM_Controller extends CI_Controller {

    private $invalidClientError = 101;
    private $invalidUserError = 102;

    public function request() {
        return json_decode(file_get_contents("php://input"));
    }

    public function response($response) {
        $this->output->set_header("x-frame-origin:SAMEORIGIN");
        $this->output->set_content_type("application/json");
        echo json_encode($response);
    }

    public function authClient() {
        $request = $this->request();
        if ($request->sessionId !== $this->session->userdata("session_id"))
            $this->errorResponse($this->invalidClientError);
    }

    private function errorResponse($error) {
        $response["success"] = FALSE;
        $response["messages"] = array($error);
        $this->response($response);
        die();
    }

}
